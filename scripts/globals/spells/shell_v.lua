-----------------------------------------
-- Spell: Shell IV
-----------------------------------------
require("scripts/globals/status")
require("scripts/globals/msg")
-----------------------------------------

function onMagicCastingCheck(caster,target,spell)
    return 0
end

function onSpellCast(caster,target,spell)
    local power = 24
    local duration = 1800

    local typeEffect = dsp.effect.SHELL
    if (target:addStatusEffect(typeEffect, power, 0, duration)) then
        spell:setMsg(dsp.msg.basic.MAGIC_GAIN_EFFECT)
    else
        spell:setMsg(dsp.msg.basic.MAGIC_NO_EFFECT) -- no effect
    end
    return typeEffect
end
