-----------------------------------
-- Area: Southern SandOria [S]
--  NPC: Door:Lion Springs
-- !pos 96 0 106 80
-----------------------------------
package.loaded["scripts/zones/Southern_San_dOria_[S]/TextIDs"] = nil;
-----------------------------------
require("scripts/globals/quests");
require("scripts/globals/missions");
require("scripts/globals/settings");
-----------------------------------

function onTrade(player,npc,trade)
end;

function onTrigger(player,npc)

    if (player:getCurrentMission(WOTG) == THE_QUEEN_OF_THE_DANCE) then
        if (player:getVar("QueenOfTheDance") == 0) then
            player:startEvent(68);
        elseif (player:getVar("QueenOfTheDance") == 2) then
            player:startEvent(70);
        end
    end

end;

function onEventUpdate(player,csid,option)
end;

function onEventFinish(player,csid,option)
    if (csid == 68) then
        player:setVar("QueenOfTheDance",1);
    elseif (csid == 70) then
        player:startEvent(152);
    elseif (csid == 152) then
        player:startEvent(153);
    elseif (csid == 153) then
        player:completeMission(WOTG, THE_QUEEN_OF_THE_DANCE);
        player:addMission(WOTG, WHILE_THE_CAT_IS_AWAY);
        player:delKeyItem(dsp.ki.MAYAKOV_SHOW_TICKET);
        player:setVar("QueenOfTheDance",0);
    end
end;