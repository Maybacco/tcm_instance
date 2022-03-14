

RegisterServerEvent('tcm_instance:joinBucket')
AddEventHandler('tcm_instance:joinBucket', function(instanceName )
 
    -- print("JOINING BUCKET")
    local instanceHash = math.abs(GetHashKey(instanceName))
    
    Citizen.InvokeNative(0x6504EB38, tostring(source), instanceHash)

end)

RegisterServerEvent('tcm_instance:leaveBucket')
AddEventHandler('tcm_instance:leaveBucket', function()

    --print("LEFT BUCKET")
    -- SetPlayerRoutingBucket(source, 0)
    Citizen.InvokeNative(0x6504EB38, tostring(source), 0)

end)

RegisterServerEvent('tcm_instance:requestJoinBucket')
AddEventHandler('tcm_instance:requestJoinBucket', function(target, instanceName)
 
    local instanceHash = math.abs(GetHashKey(instanceName))
    SetPlayerRoutingBucket(target, instanceHash)


end)

RegisterCommand("getbucket", function (source, args)
   
    local bucket = GetPlayerRoutingBucket(source)
    print("Bucket ")
    print(bucket)
end)

