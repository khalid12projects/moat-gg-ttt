require "mysqloo"

function MSE.MySQL.Connect()
	if (MSE.MySQL.DBHandle) then
		MSE.Print "Using pre-established MySQL link."
		return
	end

	local db = mysqloo.connect(MSE.Config.hostname, MSE.Config.username, MSE.Config.password, MSE.Config.database, MSE.Config.port)
	
	db.onConnectionFailed = function(msg, err)
		MSE.Print("MySQL connection failed: " .. tostring(err))
	end
	
	db.onConnected = function()
		MSE.Print("MySQL connection established at " .. os.date())
		
		MSE.MySQL.DBHandle = db

		MSE.MySQL.CheckTable()

		db.onConnected = function() MSE.Print("MySQL connection re-established at " .. os.date()) end
	end
	
	db:connect()
	db:wait()
	
	MSE.MySQL.DBHandle = db
end

function MSE.MySQL.Escape(txt)
	return MSE.MySQL.DBHandle:escape(tostring(txt or ""))
end

function MSE.MySQL.Query(query, callback, ret)
	if (!query) then
		MSE.Print "No query given."
		return
	end
	
	local db = MSE.MySQL.DBHandle
	local q = db:query(query)
	local d, r
	
	q.onData = function(self, dat)
		d = d or {}
		table.insert(d, dat)
	end
	
	q.onSuccess = function()
		if (callback) then r = callback(d) end
	end
	
	q.onError = function(q, err, query)
		if (db:status() == mysqloo.DATABASE_NOT_CONNECTED) then
			MSE.Print "MySQL connection lost during query. Reconnecting."
			
			db:connect()
			db:wait()
			
			r = MSE.MySQL.Query(query, callback, ret)
		else
			MSE.Print("MySQL error: " ..err)
			MSE.Print(" | Query: " .. query)
		end
	end
	
	q:start()
	
	if (ret) then q:wait() end
	
	return r
end

function MSE.MySQL.FormatQuery(str, ...)
	local args, arg, succ = {...}, 0

	if (args and #args > 0 and isfunction(args[#args])) then
		succ = args[#args]
		args[#args] = nil
	end
	str = str:gsub("#", function() arg = arg + 1 return MSE.MySQL.Escape(args[arg]) end)

	MSE.MySQL.Query(str, succ)
end

function MSE.MySQL.QueryRet(query, callback)
	callback = callback or function(data) return data end
	
	return MSE.MySQL.Query(query, callback, true)
end

hook.Add("MSE_Initialize", "MSE.MySQL.Connect", MSE.MySQL.Connect)