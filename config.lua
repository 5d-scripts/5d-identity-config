_CONFIG = 
{
    locale = "en",
    badWords = {"badword1", "badword2", "badword3"}, -- words that are not allowed as first/last name
    
    Commands = 
    {
        reset = -- reset identity/skin command. usage: /reset <id> (<resetSkin>). 
                -- Example: /reset 1 y -> Resets identity and skin for player ID 1
                -- Example: /reset 1 -> Resets only identity for player ID 1
        {
            enabled = true,
            commandName = "reset",
            permissions = {"admin", "mod", "supporter", "guide"}
        }
    }
}

if (not IsDuplicityVersion()) then
    -- Notify event. Can be replaced.
    ---@param message string Message to be displayed for the notify.
    ---@param type string Notify type. Either success or errror.
    RegisterNetEvent("5d-identity:notify", function(message, type)
        ESX.ShowNotification(message)
    end)
else
    -- Webhook only registered server-side to prevent abuse.
    _CONFIG.webhook = "" -- trigger webhook when new player registers. optional.
    _CONFIG.webhookMessage = "<@&944275872007987232> <@&1022219062677352460>" -- send an additonal non-embed message to the webhook. can be used to ping support roles by their id. <@&<roldeID>.
end

_LOCALE = {} -- dont touch