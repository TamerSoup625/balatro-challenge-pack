--- STEAMODDED HEADER
--- MOD_NAME: TS's Challenge Pack
--- MOD_ID: ts_decks_n_challenges
--- MOD_AUTHOR: [tamersoup625]
--- MOD_DESCRIPTION: Adds ten new challenges!!!
----------------------------------------------
------------MOD CODE -------------------------


-- sendDebugMessage to debug
-- G.GAME.challenge_tab is current challenge table

function SMODS.INIT.TSDecksNChallenges()
    G.localization.misc.challenge_names["c_test_1"] = "The TEST"
    G.localization.misc.challenge_names["c_painter_1"] = "Black Paint"
    G.localization.misc.challenge_names["c_nine_lives_1"] = "Nine Lives"
    G.localization.misc.challenge_names["c_card_collector_1"] = "Card Collector"
    G.localization.misc.challenge_names["c_jokers_only_1"] = "Jokers Only"
    G.localization.misc.challenge_names["c_sidetracked_1"] = "Sidetracked"
    G.localization.misc.challenge_names["c_icarus_1"] = "Icarus"
    G.localization.misc.challenge_names["c_true_jokers_only_1"] = "Jokers Only PLUS"
    G.localization.misc.challenge_names["c_trial_1"] = "The Trial"
    G.localization.misc.challenge_names["c_impossible_1"] = "Impossible"
    G.localization.misc.v_text["ch_c_blind_size_multi"] = {"{C:red}X#1#{} base Blind size"}
    G.localization.misc.v_text["ch_c_ante_scaling_2x"] = {"Required score scales fast for each {C:attention}Ante"}
    G.localization.misc.v_text["ch_c_no_skip"] = {"All {C:attention}Blinds{} cannot be skipped"}
    G.localization.misc.v_text["ch_c_no_shop_consumeables"] = {"Consumeables no longer appear in the {C:attention}shop"}
    G.localization.misc.v_text["ch_c_no_spade_suit"] = {"{C:spades}Spade{} does not count as a suit"}
    G.localization.misc.v_text["ch_c_possible_hand_level_max"] = {"Played poker hand {C:attention}level{} must be at most {C:attention}#1#{} before scoring"}
    G.localization.misc.v_text["ch_c_jokers_banned_percent"] = {"{C:attention}#1#%{} of Jokers are {C:red}banned{} {C:inactive}(Chosen at random)"}
    G.localization.misc.v_text["ch_c_consumables_banned_percent"] = {"{C:attention}#1#%{} of Consumeables are {C:red}banned{} {C:inactive}(Chosen at random)"}
    G.localization.misc.v_text["ch_c_vouchers_banned"] = {"{C:attention}All{} Vouchers are {C:red}banned{} {C:inactive}(Almost)"}
    G.localization.misc.v_text["ch_c_reach_x_ante"] = {"Reach Ante {C:attention}#1#{} to {C:attention}win"}
    G.localization.misc.v_text["ch_c_must_flush_five"] = {"{C:red}Must{} play at least one {C:attention}Flush Five{} before Final Boss Blind"}
    G.localization.misc.v_text["ch_c_warning"] = {"{E:1,s:1.2,C:red}WARNING: {}{C:red}I don't think this challenge is possible."}
    G.localization.misc.v_text["ch_c_play_own_risk"] = {"{C:red}Play at your own risk!"}
    init_localization()

    table.insert(G.CHALLENGES, {
        name = 'The TEST',
        id = 'c_test_1',
        rules = {
            custom = {
                --{id = 'no_reward'},
                {id = 'no_reward_specific', value = 'Big'},
                {id = 'no_extra_hand_money'},
                {id = 'no_interest'},
                --{id = 'daily'},
                --{id = 'set_seed', value = 'SEEDEEDS'},
            },
            modifiers = {
                {id = 'dollars', value = 100},
                {id = 'discards', value = 1},
                {id = 'hands', value = 6},
                {id = 'reroll_cost', value = 10},
                {id = 'joker_slots', value = 8},
                {id = 'consumable_slots', value = 3},
                {id = 'hand_size', value = 5},
            }
        },
        jokers = {
            {id = 'j_egg'},
            {id = 'j_egg'},
            {id = 'j_egg'},
            {id = 'j_egg'},
            {id = 'j_egg', edition = 'foil', eternal = true}
        },
        consumeables = {
            {id = 'c_sigil'}
        },
        vouchers = {
            {id = 'v_hieroglyph'},
        },
        deck = {
            --enhancement = 'm_glass',
            --edition = 'foil',
            --gold_seal = true,
            --yes_ranks = {['3'] = true,T = true},
            --no_ranks = {['4'] = true},
            --yes_suits = {S=true},
            --no_suits = {D=true},
            cards = {{s='D',r='2',e='m_glass',},{s='D',r='3',e='m_glass',},{s='D',r='4',e='m_glass',},{s='D',r='5',e='m_glass',},{s='D',r='6',e='m_glass',},{s='D',r='7',e='m_glass',},{s='D',r='8',e='m_glass',},{s='D',r='9',e='m_glass',},{s='D',r='T',e='m_glass',},{s='D',r='J',e='m_glass',},{s='D',r='Q',e='m_glass',},{s='D',r='K',e='m_glass',},{s='D',r='A',e='m_glass',},{s='C',r='2',e='m_glass',},{s='C',r='3',e='m_glass',},{s='C',r='4',e='m_glass',},{s='C',r='5',e='m_glass',},{s='C',r='6',e='m_glass',},{s='C',r='7',e='m_glass',},{s='C',r='8',e='m_glass',},{s='C',r='9',e='m_glass',},{s='C',r='T',e='m_glass',},{s='C',r='J',e='m_glass',},{s='C',r='Q',e='m_glass',},{s='C',r='K',e='m_glass',},{s='C',r='A',e='m_glass',},{s='H',r='2',e='m_glass',},{s='H',r='3',e='m_glass',},{s='H',r='4',e='m_glass',},{s='H',r='5',e='m_glass',},{s='H',r='6',e='m_glass',},{s='H',r='7',e='m_glass',},{s='H',r='8',e='m_glass',},{s='H',r='9',e='m_glass',},{s='H',r='T',e='m_glass',},{s='H',r='J',e='m_glass',},{s='H',r='Q',e='m_glass',},{s='H',r='K',e='m_glass',},{s='H',r='A',e='m_glass',},{s='S',r='2',e='m_glass',},{s='S',r='3',e='m_glass',},{s='S',r='4',e='m_glass',},{s='S',r='5',e='m_glass',},{s='S',r='6',e='m_glass',},{s='S',r='7',e='m_glass',},{s='S',r='8',e='m_glass',},{s='S',r='9',e='m_glass',},{s='S',r='T',e='m_glass',},{s='S',r='J',e='m_glass',},{s='S',r='Q',e='m_glass',},{s='S',r='K',e='m_glass',},{s='S',r='A',e='m_glass',},},
            type = 'Challenge Deck'
        },
        restrictions = {
            banned_cards = {
                {id = 'j_joker'},
                {id = 'j_egg'},
            },
            banned_tags = {
                {id = 'tag_garbage'},
                {id = 'tag_handy'},
            },
            banned_other = {
                {id = 'bl_wall', type = 'blind'}
            }
        }
    })
    table.insert(G.CHALLENGES, {
        name = 'Black Paint',
        id = 'c_painter_1',
        rules = {
            custom = {
                {id = "no_spade_suit"},
            },
            modifiers = {
            }
        },
        jokers = {
        },
        consumeables = {
            {id = 'c_sun'},
            {id = 'c_moon'},
        },
        vouchers = {
        },
        deck = {
            cards = {{s='S',r='2',},{s='S',r='3',},{s='S',r='4',},{s='S',r='5',},{s='S',r='6',},{s='S',r='7',},{s='S',r='8',},{s='S',r='9',},{s='S',r='T',},{s='S',r='J',},{s='S',r='Q',},{s='S',r='K',},{s='S',r='A',},{s='S',r='2',},{s='S',r='3',},{s='S',r='4',},{s='S',r='5',},{s='S',r='6',},{s='S',r='7',},{s='S',r='8',},{s='S',r='9',},{s='S',r='T',},{s='S',r='J',},{s='S',r='Q',},{s='S',r='K',},{s='S',r='A',},{s='S',r='2',},{s='S',r='3',},{s='S',r='4',},{s='S',r='5',},{s='S',r='6',},{s='S',r='7',},{s='S',r='8',},{s='S',r='9',},{s='S',r='T',},{s='S',r='J',},{s='S',r='Q',},{s='S',r='K',},{s='S',r='A',},{s='S',r='2',},{s='S',r='3',},{s='S',r='4',},{s='S',r='5',},{s='S',r='6',},{s='S',r='7',},{s='S',r='8',},{s='S',r='9',},{s='S',r='T',},{s='S',r='J',},{s='S',r='Q',},{s='S',r='K',},{s='S',r='A',},},
            type = 'Challenge Deck'
        },
        restrictions = {
            banned_cards = {
                {id = 'j_wrathful_joker'},
                {id = 'j_arrowhead'},
                {id = 'j_flower_pot'},
                {id = 'j_idol'},
            },
            banned_tags = {
            },
            banned_other = {
                {id = 'bl_goad', type = 'blind'},
            },
        }
    })
    table.insert(G.CHALLENGES, {
        name = 'Nine Lives',
        id = 'c_nine_lives_1',
        rules = {
            custom = {
                {id = 'blind_size_multi', value = 2},
                {id = 'ante_scaling_2x'},
                {id = 'no_skip'},
                {id = 'no_reward'},
            },
            modifiers = {
            }
        },
        jokers = {
            {id = 'j_mr_bones', edition = 'negative'},
            {id = 'j_mr_bones', edition = 'negative'},
            {id = 'j_mr_bones', edition = 'negative'},
            {id = 'j_mr_bones', edition = 'negative'},
            {id = 'j_mr_bones', edition = 'negative'},
            {id = 'j_mr_bones', edition = 'negative'},
            {id = 'j_mr_bones', edition = 'negative'},
            {id = 'j_mr_bones', edition = 'negative'},
            {id = 'j_golden', edition = 'negative', eternal = true},
        },
        consumeables = {
        },
        vouchers = {
        },
        deck = {
            type = 'Challenge Deck'
        },
        restrictions = {
            banned_cards = {
                {id = 'j_mr_bones'},
                {id = 'j_baseball'},
            },
            banned_tags = {
            },
            banned_other = {
            }
        }
    })
    table.insert(G.CHALLENGES, {
        name = 'Card Collector',
        id = 'c_card_collector_1',
        rules = {
            custom = {
                {id = 'no_shop_jokers'},
                {id = 'no_shop_consumeables'},
            },
            modifiers = {
                {id = 'joker_slots', value = 1},
                {id = 'consumable_slots', value = 1},
            }
        },
        jokers = {
            {id = 'j_joker'},
        },
        consumeables = {
            {id = 'c_medium'},
            {id = 'c_trance'},
        },
        vouchers = {
            {id = 'v_magic_trick'},
            {id = 'v_illusion'},
            {id = 'v_hieroglyph'},
        },
        deck = {
            cards = {{s='S',r='A',e='m_stone',}},
            type = 'Challenge Deck'
        },
        restrictions = {
            banned_cards = {
                {id = 'p_buffoon_normal_1', ids = {
                    'p_buffoon_normal_1','p_buffoon_normal_2','p_buffoon_jumbo_1','p_buffoon_mega_1',
                }},
                {id = 'p_arcana_normal_1', ids = {
                    'p_arcana_normal_1','p_arcana_normal_2','p_arcana_normal_3','p_arcana_normal_4',
                    'p_arcana_jumbo_1', 'p_arcana_jumbo_2', 'p_arcana_mega_1', 'p_arcana_mega_2',
                }},
                {id = 'p_celestial_normal_1', ids = {
                    'p_celestial_normal_1','p_celestial_normal_2','p_celestial_normal_3','p_celestial_normal_4',
                    'p_celestial_jumbo_1', 'p_celestial_jumbo_2', 'p_celestial_mega_1', 'p_celestial_mega_2',
                }},
                {id = 'p_spectral_normal_1', ids = {
                    'p_spectral_normal_1','p_spectral_normal_2','p_spectral_jumbo_1','p_spectral_mega_1',
                }},
                {id = 'v_tarot_merchant', ids = {
                    'v_tarot_merchant', 'v_tarot_tycoon'
                }},
                {id = 'v_planet_merchant', ids = {
                    'v_planet_merchant', 'v_planet_tycoon'
                }},
                {id = 'v_telescope'},
                {id = 'v_omen_globe'},
                {id = 'j_astronomer'},
            },
            banned_tags = {
            },
            banned_other = {
            }
        }
    })
    table.insert(G.CHALLENGES, {
        name = 'Jokers Only',
        id = 'c_jokers_only_1',
        rules = {
            custom = {
                {id = 'no_shop_consumeables'},
            },
            modifiers = {
            }
        },
        jokers = {
        },
        consumeables = {
        },
        vouchers = {
        },
        deck = {
            type = 'Challenge Deck'
        },
        restrictions = {
            banned_cards = {
                {id = 'p_arcana_normal_1', ids = {
                    'p_arcana_normal_1','p_arcana_normal_2','p_arcana_normal_3','p_arcana_normal_4',
                    'p_arcana_jumbo_1', 'p_arcana_jumbo_2', 'p_arcana_mega_1', 'p_arcana_mega_2',
                }},
                {id = 'p_celestial_normal_1', ids = {
                    'p_celestial_normal_1','p_celestial_normal_2','p_celestial_normal_3','p_celestial_normal_4',
                    'p_celestial_jumbo_1', 'p_celestial_jumbo_2', 'p_celestial_mega_1', 'p_celestial_mega_2',
                }},
                {id = 'p_spectral_normal_1', ids = {
                    'p_spectral_normal_1','p_spectral_normal_2','p_spectral_jumbo_1','p_spectral_mega_1',
                }},
                {id = 'v_tarot_merchant', ids = {
                    'v_tarot_merchant', 'v_tarot_tycoon'
                }},
                {id = 'v_planet_merchant', ids = {
                    'v_planet_merchant', 'v_planet_tycoon'
                }},
                {id = 'v_telescope'},
                {id = 'v_omen_globe'},
                {id = 'j_astronomer'},
            },
            banned_tags = {
                {id = 'tag_charm'},
                {id = 'tag_meteor'},
                {id = 'tag_ethereal'},
            },
            banned_other = {
            }
        }
    })
    table.insert(G.CHALLENGES, {
        name = 'Sidetracked',
        id = 'c_sidetracked_1',
        rules = {
            custom = {
                {id = 'blind_size_multi', value = 0.5},
                {id = 'must_flush_five'},
            },
            modifiers = {
            }
        },
        jokers = {
        },
        consumeables = {
            {id = 'c_eris'},
        },
        vouchers = {
        },
        deck = {
            type = 'Challenge Deck',
        },
        restrictions = {
            banned_cards = {
            },
            banned_tags = {
            },
            banned_other = {
            }
        }
    })
    table.insert(G.CHALLENGES, {
        name = 'Icarus',
        id = 'c_icarus_1',
        rules = {
            custom = {
                {id = 'possible_hand_level_max', value = 5},
            },
            modifiers = {
            }
        },
        jokers = {
            {id = 'j_oops', eternal = true, edition = 'negative'},
            {id = 'j_oops', eternal = true, edition = 'negative'},
            {id = 'j_space', eternal = true, edition = 'negative'},
        },
        consumeables = {
        },
        vouchers = {
        },
        deck = {
            cards = {{s='H',r='2',},{s='H',r='3',},{s='H',r='4',},{s='H',r='5',},{s='H',r='6',},{s='H',r='7',},{s='H',r='8',},{s='H',r='9',},{s='H',r='T',},{s='H',r='A',},{s='S',r='2',},{s='S',r='3',},{s='S',r='4',},{s='S',r='5',},{s='S',r='6',},{s='S',r='7',},{s='S',r='8',},{s='S',r='9',},{s='S',r='T',},{s='S',r='A',},{s='H',r='2',},{s='H',r='3',},{s='H',r='4',},{s='H',r='5',},{s='H',r='6',},{s='H',r='7',},{s='H',r='8',},{s='H',r='9',},{s='H',r='T',},{s='H',r='A',},{s='S',r='2',},{s='S',r='3',},{s='S',r='4',},{s='S',r='5',},{s='S',r='6',},{s='S',r='7',},{s='S',r='8',},{s='S',r='9',},{s='S',r='T',},{s='S',r='A',},},
            type = 'Challenge Deck'
        },
        restrictions = {
            banned_cards = {
            },
            banned_tags = {
            },
            banned_other = {
            }
        }
    })
    table.insert(G.CHALLENGES, {
        name = 'Jokers Only PLUS',
        id = 'c_true_jokers_only_1',
        rules = {
            custom = {
                {id = 'no_shop_consumeables'},
                {id = 'vouchers_banned'},
            },
            modifiers = {
                {id = 'consumable_slots', value = 0},
            }
        },
        jokers = {
            {id = 'j_trading'},
        },
        consumeables = {
        },
        vouchers = {
        },
        deck = {
            type = 'Challenge Deck'
        },
        restrictions = {
            banned_cards = {
                {id = 'p_arcana_normal_1', ids = {
                    'p_arcana_normal_1','p_arcana_normal_2','p_arcana_normal_3','p_arcana_normal_4',
                    'p_arcana_jumbo_1', 'p_arcana_jumbo_2', 'p_arcana_mega_1', 'p_arcana_mega_2',
                }},
                {id = 'p_celestial_normal_1', ids = {
                    'p_celestial_normal_1','p_celestial_normal_2','p_celestial_normal_3','p_celestial_normal_4',
                    'p_celestial_jumbo_1', 'p_celestial_jumbo_2', 'p_celestial_mega_1', 'p_celestial_mega_2',
                }},
                {id = 'p_spectral_normal_1', ids = {
                    'p_spectral_normal_1','p_spectral_normal_2','p_spectral_jumbo_1','p_spectral_mega_1',
                }},
                {id = 'p_standard_normal_1', ids = {
                    'p_standard_normal_1','p_standard_normal_2','p_standard_normal_3','p_standard_normal_4','p_standard_jumbo_1','p_standard_jumbo_2','p_standard_mega_1','p_standard_mega_2',
                }},
                {id = 'j_space'},
                {id = 'j_burnt'},

                {id = 'j_fortune_teller'},
                {id = 'j_8_ball'},
                {id = 'j_superposition'},
                {id = 'j_vagabond'},
                {id = 'j_hallucination'},
                {id = 'j_cartomancer'},
                {id = 'j_constellation'},
                {id = 'j_satellite'},
                {id = 'j_astronomer'},
                {id = 'j_sixth_sense'},
                {id = 'j_seance'},
            },
            banned_tags = {
                {id = 'tag_charm'},
                {id = 'tag_meteor'},
                {id = 'tag_ethereal'},
                {id = 'tag_standard'},
                {id = 'tag_voucher'},
                {id = 'tag_orbital'},
            },
            banned_other = {
            }
        }
    })
    table.insert(G.CHALLENGES, {
        name = "The Trial",
        id = 'c_trial_1',
        rules = {
            custom = {
                {id = 'jokers_banned_percent', value = 85},
                {id = 'consumables_banned_percent', value = 60},
            },
            modifiers = {
            }
        },
        jokers = {
        },
        consumeables = {
        },
        vouchers = {
        },
        deck = {
            type = 'Challenge Deck'
        },
        restrictions = {
            banned_cards = {
                {id = 'p_standard_normal_1', ids = {
                    'p_standard_normal_1','p_standard_normal_2','p_standard_normal_3','p_standard_normal_4','p_standard_jumbo_1','p_standard_jumbo_2','p_standard_mega_1','p_standard_mega_2',
                }},
                {id = 'v_magic_trick', ids = {
                    'v_magic_trick', 'v_illusion'
                }},
            },
            banned_tags = {
                {id = 'tag_standard'},
            },
            banned_other = {
            }
        }
    })
    table.insert(G.CHALLENGES, {
        name = 'Impossible',
        id = 'c_impossible_1',
        rules = {
            custom = {
                {id = "warning"},
                {id = "play_own_risk"},
                {id = 'no_reward'},
                {id = 'flipped_cards', value = 7},
                {id = 'debuff_played_cards'},
                {id = "no_spade_suit"},
                {id = 'consumables_banned_percent', value = 50},
                {id = 'vouchers_banned'},
            },
            modifiers = {
                {id = 'dollars', value = 25},
                {id = 'discards', value = 2},
                {id = 'hands', value = 1},
            }
        },
        jokers = {
            {id = 'j_madness', eternal = true, pinned = true},
        },
        consumeables = {
        },
        vouchers = {
        },
        deck = {
            cards = {{s='S',r='2',},{s='S',r='3',},{s='S',r='4',},{s='S',r='5',},{s='S',r='6',},{s='S',r='7',},{s='S',r='8',},{s='S',r='9',},{s='S',r='T',},{s='S',r='J',},{s='S',r='Q',},{s='S',r='K',},{s='S',r='A',},{s='S',r='2',},{s='S',r='3',},{s='S',r='4',},{s='S',r='5',},{s='S',r='6',},{s='S',r='7',},{s='S',r='8',},{s='S',r='9',},{s='S',r='T',},{s='S',r='J',},{s='S',r='Q',},{s='S',r='K',},{s='S',r='A',},{s='S',r='2',},{s='S',r='3',},{s='S',r='4',},{s='S',r='5',},{s='S',r='6',},{s='S',r='7',},{s='S',r='8',},{s='S',r='9',},{s='S',r='T',},{s='S',r='J',},{s='S',r='Q',},{s='S',r='K',},{s='S',r='A',},{s='S',r='2',},{s='S',r='3',},{s='S',r='4',},{s='S',r='5',},{s='S',r='6',},{s='S',r='7',},{s='S',r='8',},{s='S',r='9',},{s='S',r='T',},{s='S',r='J',},{s='S',r='Q',},{s='S',r='K',},{s='S',r='A',},},
            type = 'Challenge Deck'
        },
        restrictions = {
            banned_cards = {
                {id = 'j_burglar'},
            },
            banned_tags = {
            },
            banned_other = {
                {id = 'bl_final_acorn', type = 'blind'},
            }
        }
    })

    local game_start_run_ref = Game.start_run
    function Game:start_run(args)
        game_start_run_ref(self, args)
        local saveTable = args.savetext or nil
        if not saveTable then
            if args.challenge then
                local _ch = args.challenge
                if _ch.rules then
                    if _ch.rules.custom then
                        for k, v in ipairs(_ch.rules.custom) do
                            if v.id == 'blind_size_multi' then
                                G.GAME.starting_params.ante_scaling = v.value
                            elseif v.id == 'ante_scaling_2x' then
                                G.GAME.modifiers.scaling = 2
                            elseif v.id == 'no_shop_consumeables' then
                                G.GAME.tarot_rate = 0
                                G.GAME.planet_rate = 0
                                G.GAME.spectral_rate = 0
                            elseif v.id == 'jokers_banned_percent' then
                                for i = 1, 4, 1 do
                                    local key_pool = {}
                                    for _, value in pairs(G.P_JOKER_RARITY_POOLS[i]) do
                                        if value.unlocked then
                                            table.insert(key_pool, value.key)
                                        end
                                    end
                                    local banned_count = math.max(0, math.min(#key_pool * (v.value / 100), #key_pool - 1))
                                    for j = 1, banned_count, 1 do
                                        local banned_key, index = pseudorandom_element(key_pool)
                                        G.GAME.banned_keys[banned_key] = true
                                        table.remove(key_pool, index)
                                    end
                                end
                            elseif v.id == 'consumables_banned_percent' then
                                for _, value in pairs({"Tarot", "Planet", "Spectral"}) do
                                    local key_pool = {}
                                    for _, value in pairs(G.P_CENTER_POOLS[value]) do
                                        table.insert(key_pool, value.key)
                                    end
                                    local banned_count = math.max(0, math.min(#key_pool * (v.value / 100), #key_pool - 1))
                                    for j = 1, banned_count, 1 do
                                        local banned_key, index = pseudorandom_element(key_pool)
                                        G.GAME.banned_keys[banned_key] = true
                                        table.remove(key_pool, index)
                                    end
                                end
                            elseif v.id == 'reach_x_ante' then
                                G.GAME.win_ante = v.value
                            end
                        end
                    end
                end
            end
        end
    end

    -- If there's no tag in one of G.GAME.round_resets.blind_tags, the UI doesn't appear
    local get_next_tag_key_ref = get_next_tag_key
    function get_next_tag_key(append)
        if G.GAME.modifiers.no_skip then
            return nil
        end
        return get_next_tag_key_ref(append)
    end

    local get_next_voucher_key_ref = get_next_voucher_key
    function get_next_voucher_key(_from_tag)
        if G.GAME.modifiers.vouchers_banned then
            return 'v_blank'
        end
        return get_next_voucher_key_ref(_from_tag)
    end

    --[[local Blind_debuff_card_ref = Blind.debuff_card
    function Blind:debuff_card(card, from_blind)
        if G.GAME.modifiers.stone_cards_debuffed then
            if self.debuff and not self.disabled and card.area ~= G.jokers then
                if card.ability.effect == "Stone Card" then
                    card:set_debuff(true)
                    return
                end
            end
        end
        return Blind_debuff_card_ref(self, card, from_blind)
    end]]

    -- self.config.blind.boss.showdown
    local Blind_set_blind_ref = Blind.set_blind
    function Blind:set_blind(blind, reset, silent)
        local ret = Blind_set_blind_ref(self, blind, reset, silent)
        if G.GAME.modifiers.must_flush_five and (not reset) and self.config.blind.boss and self.config.blind.boss.showdown then
            if G.GAME.hands["Flush Five"].played == 0 then
                end_round()
            end
        end
        return ret
    end

    local Blind_debuff_hand_ref = Blind.debuff_hand
    function Blind:debuff_hand(cards, hand, handname, check)
        if G.GAME.modifiers.possible_hand_level_max then
            self.challenge_condition_triggered = G.GAME.hands[handname].level > G.GAME.modifiers.possible_hand_level_max
            if self.challenge_condition_triggered then
                self.triggered = true
                return true
            end
        end
        return Blind_debuff_hand_ref(self, cards, hand, handname, check)
    end

    local Blind_get_loc_debuff_text_ref = Blind.get_loc_debuff_text
    function Blind:get_loc_debuff_text()
        if G.GAME.modifiers.possible_hand_level_max then
            if self.challenge_condition_triggered then
                -- Localization is problematic
                return "Played poker hand level must be at most " .. G.GAME.modifiers.possible_hand_level_max .. " before scoring"
            end
        end
        return Blind_get_loc_debuff_text_ref(self)
    end

    --[[local Back_trigger_effect_ref = Back.trigger_effect
    function Back:trigger_effect(args)
        if G.GAME.modifiers.forbid_last_hand_of_ante then
            if args.context == 'final_scoring_step' then
                -- FIXME: BREAKS WITH HOOK
                self.challenge_last_hand = G.GAME.current_round.current_hand.handname
            elseif args.context == 'eval' and G.GAME.last_blind and G.GAME.last_blind.boss then
                local handname = self.challenge_last_hand
                G.E_MANAGER:add_event(Event({
                    func = (function()
                        update_hand_text({sound = 'button', volume = 0.7, pitch = 0.8, delay = 0.3}, {
                            handname=localize(handname, 'poker_hands'),
                            chips = G.GAME.hands[handname].chips,
                            mult = G.GAME.hands[handname].mult,
                            level=G.GAME.hands[handname].level
                        })
                        level_up_hand(nil, handname, false, -G.GAME.hands[handname].level)
                        update_hand_text({sound = 'button', volume = 0.7, pitch = 1.1, delay = 0}, {mult = 0, chips = 0, handname = '', level = ''})
                        --update_hand_text({sound = 'button', volume = 0.7, pitch = 0.8, delay = 0.3},{handname=localize(handname, 'poker_hands'),chips = G.GAME.hands[handname].chips, mult = G.GAME.hands[handname].mult, level=G.GAME.hands[handname].level})
                        --level_up_hand(nil, handname, -G.GAME.hands[handname].level)
                        --update_hand_text({sound = 'button', volume = 0.7, pitch = 1.1, delay = 0}, {mult = 0, chips = 0, handname = '', level = ''})
                        return true
                    end)
                }))
            end
        end
        return Back_trigger_effect_ref(self, args)
    end]]

    local Card_is_suit_ref = Card.is_suit
    function Card:is_suit(suit, bypass_debuff, flush_calc)
        if G.GAME.modifiers.no_spade_suit then
            if suit == "Spades" then
                return false
            end
            -- Smeared Joker only works on Hearts and Diamonds
            if suit == "Clubs" and next(find_joker('Smeared Joker')) and (self.base.suit == 'Spades') and (self.ability.name ~= "Wild Card") then
                return false
            end
        end
        return Card_is_suit_ref(self, suit, bypass_debuff, flush_calc)
    end
end