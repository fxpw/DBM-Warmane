local L = DBM_GUI_L

local extraFeaturesPanel	= DBM_GUI.Cat_General:CreateNewPanel(L.Panel_ExtraFeatures, "option")

local soundAlertsArea		= extraFeaturesPanel:CreateArea(L.Area_SoundAlerts)
soundAlertsArea:CreateCheckButton(L.LFDEnhance, true, nil, "LFDEnhance")
soundAlertsArea:CreateCheckButton(L.WorldBossNearAlert, true, nil, "WorldBossNearAlert")
soundAlertsArea:CreateCheckButton(L.RLReadyCheckSound, true, nil, "RLReadyCheckSound")
soundAlertsArea:CreateCheckButton(L.AFKHealthWarning, true, nil, "AFKHealthWarning")
soundAlertsArea:CreateCheckButton(L.AutoReplySound, true, nil, "AutoReplySound")

local generaltimeroptions	= extraFeaturesPanel:CreateArea(L.TimerGeneral)
generaltimeroptions:CreateCheckButton(L.SKT_Enabled, true, nil, "AlwaysShowSpeedKillTimer2")
generaltimeroptions:CreateCheckButton(L.ShowRespawn, true, nil, "ShowRespawn")
generaltimeroptions:CreateCheckButton(L.ShowQueuePop, true, nil, "ShowQueuePop")

local bossLoggingArea		= extraFeaturesPanel:CreateArea(L.Area_AutoLogging)
bossLoggingArea:CreateCheckButton(L.AutologBosses, true, nil, "AutologBosses")
if _G["Transcriptor"] then
	bossLoggingArea:CreateCheckButton(L.AdvancedAutologBosses, true, nil, "AdvancedAutologBosses")
end
bossLoggingArea:CreateCheckButton(L.RecordOnlyBosses, true, nil, "RecordOnlyBosses")
bossLoggingArea:CreateCheckButton(L.LogOnlyNonTrivial, true, nil, "LogOnlyNonTrivial")

local thirdPartyArea = extraFeaturesPanel:CreateArea(L.Area_3rdParty)
if _G["oRA3Frame"] then
	thirdPartyArea:CreateCheckButton(L.oRA3AnnounceConsumables, true, nil, "oRA3AnnounceConsumables")
elseif _G["BigBrother"] and type(BigBrother.ConsumableCheck) == "function" then
	thirdPartyArea:CreateCheckButton(L.ShowBBOnCombatStart, true, nil, "ShowBigBrotherOnCombatStart")
	thirdPartyArea:CreateCheckButton(L.BigBrotherAnnounceToRaid, true, nil, "BigBrotherAnnounceToRaid")
end
thirdPartyArea:CreateCheckButton(L.ReportRecount, true, nil, "ReportRecount")
thirdPartyArea:CreateCheckButton(L.ReportSkada, true, nil, "ReportSkada")

local inviteArea			= extraFeaturesPanel:CreateArea(L.Area_Invite)
inviteArea:CreateCheckButton(L.AutoAcceptFriendInvite, true, nil, "AutoAcceptFriendInvite")
inviteArea:CreateCheckButton(L.AutoAcceptGuildInvite, true, nil, "AutoAcceptGuildInvite")

local advancedArea	= extraFeaturesPanel:CreateArea(L.Area_Advanced)
advancedArea:CreateCheckButton(L.FakeBW, true, nil, "FakeBWVersion")
advancedArea:CreateCheckButton(L.AITimer, true, nil, "AITimer")
advancedArea:CreateCheckButton(L.FixCLEUOnCombatStart,  true, nil, "FixCLEUOnCombatStart")