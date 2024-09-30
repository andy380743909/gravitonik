local gameLeft
local gameDown
local gameUp
local gameRight

if love.system.getOS() == "NX" then
	-- if settings.dfjk then
	-- 	gameLeft = {"axis:triggerleft+", "axis:leftx-", "axis:rightx-", "button:dpleft", "button:x", "key:d", "key:left"}
	-- 	gameDown = {"axis:lefty+", "axis:righty+", "button:leftshoulder", "button:dpdown", "button:a", "key:f", "key:down"}
	-- 	gameUp = {"axis:lefty-", "axis:righty-", "button:rightshoulder", "button:dpup", "button:y", "key:j", "key:up"}
	-- 	gameRight = {"axis:triggerright+", "axis:leftx+", "axis:rightx+", "button:dpright", "button:b", "key:k", "key:right"}
	-- else
		gameLeft = {"axis:triggerleft+", "axis:leftx-", "axis:rightx-", "button:dpleft", "button:x", "key:a", "key:left"}
		gameDown = {"axis:lefty+", "axis:righty+", "button:leftshoulder", "button:dpdown", "button:a", "key:s", "key:down"}
		gameUp = {"axis:lefty-", "axis:righty-", "button:rightshoulder", "button:dpup", "button:y", "key:w", "key:up"}
		gameRight = {"axis:triggerright+", "axis:leftx+", "axis:rightx+", "button:dpright", "button:b", "key:d", "key:right"}
	-- end

	return baton.new {
		controls = {
			left = {"axis:leftx-", "button:dpleft", "key:left"},
			down = {"axis:lefty+", "button:dpdown", "key:down"},
			up = {"axis:lefty-", "button:dpup", "key:up"},
			right = {"axis:leftx+", "button:dpright", "key:right"},
			confirm = {"button:b", "key:return"},
			back = {"button:a", "key:escape"},

			gameLeft = gameLeft,
			gameDown = gameDown,
			gameUp = gameUp,
			gameRight = gameRight,
			gameBack = {"button:start", "key:escape"},
		},
		joystick = love.joystick.getJoysticks()[1]
	}
elseif love.system.getOS() == "iOS" then
	-- if settings.dfjk then
	-- 	gameLeft = {"key:d", "key:left", "axis:triggerleft+", "axis:leftx-", "axis:rightx-", "button:dpleft", "button:x"}
	-- 	gameDown = {"key:f", "key:down", "axis:lefty+", "axis:righty+", "button:leftshoulder", "button:dpdown", "button:a"}
	-- 	gameUp = {"key:j", "key:up", "axis:lefty-", "axis:righty-", "button:rightshoulder", "button:dpup", "button:y"}
	-- 	gameRight = {"key:k", "key:right", "axis:triggerright+", "axis:leftx+", "axis:rightx+", "button:dpright", "button:b"}
	-- else
		gameLeft = {"key:a", "key:left", "axis:triggerleft+", "axis:leftx-", "axis:rightx-", "button:dpleft", "button:x"}
		gameDown = {"key:s", "key:down", "axis:lefty+", "axis:righty+", "button:leftshoulder", "button:dpdown", "button:a"}
		gameUp = {"key:w", "key:up", "axis:lefty-", "axis:righty-", "button:rightshoulder", "button:dpup", "button:y"}
		gameRight = {"key:d", "key:right", "axis:triggerright+", "axis:leftx+", "axis:rightx+", "button:dpright", "button:b"}
	-- end

	return baton.new {
		controls = {
			left = {"key:left", "axis:leftx-", "button:dpleft"},
			down = {"key:down", "axis:lefty+", "button:dpdown"},
			up = {"key:up", "axis:lefty-", "button:dpup"},
			right = {"key:right", "axis:leftx+", "button:dpright"},
			confirm = {"key:return", "button:a"},
			back = {"key:escape", "button:b"},

			gameLeft = gameLeft,
			gameDown = gameDown,
			gameUp = gameUp,
			gameRight = gameRight,
			gameBack = {"key:escape", "button:start"},
		},
		joystick = love.joystick.getJoysticks()[2]
}
else
	-- if settings.dfjk then
	-- 	gameLeft = {"key:d", "key:left", "axis:triggerleft+", "axis:leftx-", "axis:rightx-", "button:dpleft", "button:x"}
	-- 	gameDown = {"key:f", "key:down", "axis:lefty+", "axis:righty+", "button:leftshoulder", "button:dpdown", "button:a"}
	-- 	gameUp = {"key:j", "key:up", "axis:lefty-", "axis:righty-", "button:rightshoulder", "button:dpup", "button:y"}
	-- 	gameRight = {"key:k", "key:right", "axis:triggerright+", "axis:leftx+", "axis:rightx+", "button:dpright", "button:b"}
	-- else
		gameLeft = {"key:a", "key:left", "axis:triggerleft+", "axis:leftx-", "axis:rightx-", "button:dpleft", "button:x"}
		gameDown = {"key:s", "key:down", "axis:lefty+", "axis:righty+", "button:leftshoulder", "button:dpdown", "button:a"}
		gameUp = {"key:w", "key:up", "axis:lefty-", "axis:righty-", "button:rightshoulder", "button:dpup", "button:y"}
		gameRight = {"key:d", "key:right", "axis:triggerright+", "axis:leftx+", "axis:rightx+", "button:dpright", "button:b"}
	-- end

	return baton.new {
		controls = {
			left = {"key:left", "axis:leftx-", "button:dpleft"},
			down = {"key:down", "axis:lefty+", "button:dpdown"},
			up = {"key:up", "axis:lefty-", "button:dpup"},
			right = {"key:right", "axis:leftx+", "button:dpright"},
			confirm = {"key:return", "button:a"},
			back = {"key:escape", "button:b"},

			gameLeft = gameLeft,
			gameDown = gameDown,
			gameUp = gameUp,
			gameRight = gameRight,
			gameBack = {"key:escape", "button:start"},
		},
		joystick = love.joystick.getJoysticks()[1]
	}
end