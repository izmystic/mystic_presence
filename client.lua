CreateThread(function()
    if not Config.Discord.AppID then return print('please put an AppID in config.lua') end
    SetDiscordAppId(Config.Discord.AppID)
    if not Config.Discord.Text then return end
    SetRichPresence(Config.Discord.Text)
    if not Config.Discord.Asset then return end
    SetDiscordRichPresenceAsset(Config.Discord.Asset)
    if not Config.Discord.AssetText then return end
    SetDiscordRichPresenceAssetText(Config.Discord.AssetText)
    if not Config.Discord.AssetSmall then return end
    SetDiscordRichPresenceAssetSmall(Config.Discord.AssetSmall)
    if not Config.Discord.AssetSmallText then return end
    SetDiscordRichPresenceAssetSmallText(Config.Discord.AssetSmallText)
    for i = 1, #Config.Discord.Actions do
        SetDiscordRichPresenceAction(i, Config.Discord.Actions[i][1], Config.Discord.Actions[i][2])
    end
end)
