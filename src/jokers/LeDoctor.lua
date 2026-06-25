SMODS.Joker {
    key = 'ledoctor',
    atlas = 'placeholders',
    pos = {
        x = 1,
        y = 0
    },

    config = {
        extra = {
            xmult = 2.0,
            currentxmult = 1.0,
            spent = 0.0
        }
    },

    rarity = 2,
    cost = 6,

    loc_vars = function(self, info_queue, card)
        return {
            vars = {
                card.ability.extra.xmult,
                card.ability.extra.spent
            }
        }
    end,

    calculate = function(self, card, context)
        if context.joker_main then
            return {
                xmult = card.ability.extra.xmult,
            }
        end
    end
}