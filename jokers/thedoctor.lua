
SMODS.Joker{ --The Doctor
    key = "thedoctor",
    loc_txt = {
        ['name'] = 'The Doctor',
        ['text'] = {
            [1] = {
                'Gains {X:mult,C:white}X#1#{} Mult',
                'for each {C:money}$20{} spent.',
                'Halved at the end of the round.',
            },
            [2] = {
                'Currently {X:mult,C:white}X#2#',
                '{C:inactive}To next upgrade:{} {C:money}$#3#{}/{C:money}$20{}'
            }
        },
        ['unlock'] = {
            [1] = 'Unlocked by default.'
        }
    },

    pos = {
        x = 5,
        y = 0
    },

    display_size = {
        w = 71 * 1, 
        h = 95 * 1
    },

    blueprint_compat = true,
    eternal_compat = true,
    perishable_compat = true,
    unlocked = true,
    discovered = true,
    atlas = 'CustomJokers',
    pools = { ["mahrlatr_mahrlatr_jokers"] = true },

    cost = 6,
    rarity = 2,

    config = {
        extra = {
            xmult = 2.0,
            currentxmult = 1.0,
            spent = 0.0
        }
    },
    
    loc_vars = function(self, info_queue, card)
        return {
            vars = {
                card.ability.extra.xmult,
                card.ability.extra.currentxmult,
                card.ability.extra.spent
            }
        }
    end,
    
    calculate = function(self, card, context)
        if context.buying_card then
            card.ability.extra.spent = card.ability.extra.spent + context.card.cost
        end

        if context.joker_main then
            return {
                x_mult = card.ability.extra.currentxmult,
            }
        end
    end
}