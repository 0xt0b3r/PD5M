RegisterNetEvent('pd5m:mss:TriggerCallout')
AddEventHandler('pd5m:mss:TriggerCallout', function(CalloutID)
  TriggerServerEvent('pd5m:msssv:RegisterCallout', CalloutID)
  ListOfCallouts[CalloutID]:Main()
end)

RegisterNetEvent('pd5m:mss:TriggerAmbientEvent')
AddEventHandler('pd5m:mss:TriggerAmbientEvent', function(AmbientEventID)
  TriggerServerEvent('pd5m:msssv:RegisterAmbientEventTimer', AmbientEventID)
  ListOfAmbientEvents[AmbientEventID]:Main()
end)
--print(GetPlayerServerId(NetworkGetPlayerIndexFromPed(GetPlayerPed(-1))))
