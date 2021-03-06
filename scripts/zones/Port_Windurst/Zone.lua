-----------------------------------
--
-- Zone: Port_Windurst (240)
--
-----------------------------------
package.loaded["scripts/zones/Port_Windurst/TextIDs"] = nil;
-----------------------------------
require("scripts/zones/Port_Windurst/TextIDs");
require("scripts/zones/Port_Windurst/MobIDs");
require("scripts/globals/conquest");
require("scripts/globals/settings");
require("scripts/globals/zone");
-----------------------------------

function onInitialize(zone)
    SetExplorerMoogles(PORT_W_EXPLORER_MOOGLE);
end;

function onZoneIn(player,prevZone)
    local cs = -1;
    -- FIRST LOGIN (START CS)
    if (player:getPlaytime(false) == 0) then
        if (OPENING_CUTSCENE_ENABLE == 1) then
            cs = 305;
        end
        player:setPos(-120,-5.5,175,48);
        player:setHomePoint();
    end
    if (player:getXPos() == 0 and player:getYPos() == 0 and player:getZPos() == 0) then
        if (prevZone == 225) then
            cs = 10004;
            player:setPos(228.000, -3.000, 76.000, 160);
        else
            position = math.random(1,5) + 195;
            player:setPos(position,-15.56,258,65);
            if (player:getMainJob() ~= player:getVar("PlayerMainJob")) then
                cs = 30004;
            end
            player:setVar("PlayerMainJob",0);
        end
    end
    return cs;
end;

function onConquestUpdate(zone, updatetype)
    dsp.conq.onConquestUpdate(zone, updatetype)
end;

function onTransportEvent(player,transport)
    player:startEvent(10002);
end;

function onEventUpdate(player,csid,option)
end;

function onEventFinish(player,csid,option)
    if (csid == 305) then
        player:messageSpecial(ITEM_OBTAINED,536);
    elseif (csid == 10002) then
        player:setPos(0,0,0,0,225);
    elseif (csid == 30004 and option == 0) then
        player:setHomePoint();
        player:messageSpecial(HOMEPOINT_SET);
    end
end;
