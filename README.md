## Installation

- Remove esx_identity
- Remove esx_multicharacter
- Navigate to `es_extended/config.lua` and set `Config.Multichar = false`


### Replace Default Skin Menu
- Navigate to `esx_skin/client/main.lua`
- Replace the following event
```lua
RegisterNetEvent('esx_skin:openSaveableMenu')
AddEventHandler('esx_skin:openSaveableMenu', function(submitCb, cancelCb)
    -- OpenSaveableMenu(submitCb, cancelCb, nil) <- Old, default skin menu
    TriggerEvent("customSkinMenu:open", function()
        submitCb()
    end, function()
        cancelCb()
    end)
end)```
