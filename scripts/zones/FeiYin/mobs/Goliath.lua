-----------------------------------
-- Area: Fei'Yin
--  NM:  Goliath
-----------------------------------
require("scripts/globals/titles");
-----------------------------------

function onMobSpawn(mob)
end;

function onMobDeath(mob, player, isKiller)
    player:addTitle(dsp.title.GOLIATH_KILLER);
end;