-----------------------------------
-- Area: Chocobo_Circuit
--  NPC: Curtis
-- Standard Info NPC
-----------------------------------
package.loaded["scripts/zones/Chocobo_Circuit/TextIDs"] = nil;
-----------------------------------
require("scripts/zones/Chocobo_Circuit/TextIDs");
-----------------------------------

function onTrade(player,npc,trade)
end;

function onTrigger(player,npc)
    player:startEvent(211);
end;

function onEventUpdate(player,csid,option)
end;

function onEventFinish(player,csid,option)
end;