
--DEBUG COMMANDS
-- RegisterCommand('joinBucket',function (source, args)
--     TriggerServerEvent("tcm_instance:joinBucket", args[1])
-- end,false)

-- RegisterCommand('leaveBucket',function (source, args)
--     TriggerServerEvent("tcm_instance:leaveBucket")
-- end,false)

AddEventHandler('tcm_instance:requestJoinBucket', function(instanceName)
	TriggerServerEvent("tcm_instance:joinBucket", instanceName)
end)
