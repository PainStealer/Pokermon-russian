local item_list = {}

local moonstone = {
  name = "moonstone",
  key = "moonstone",
  set = "Item",
  loc_txt = {
    name = "Moon Stone",
    text = {
      "Creates a {C:attention}Moon{} card",
      "{C:attention}Evolution Card{}",
      "{C:inactive}(Must have room){}"
    }
  },
  loc_vars = function(self, info_queue, center)
    info_queue[#info_queue+1] = G.P_CENTERS.c_moon
    info_queue[#info_queue+1] = {set = 'Other', key = 'eitem'}
  end,
  pos = { x = 8, y = 3 },
  atlas = "Mart",
  cost = 4,
  evo_item = true,
  unlocked = true,
  discovered = true,
  can_use = function(self, card)
    return true
  end,
  use = function(self, card, area, copier)
    if #G.consumeables.cards + G.GAME.consumeable_buffer < G.consumeables.config.card_limit then
      local _card = create_card('Tarot', G.consumeables, nil, nil, nil, nil, 'c_moon')
      _card:add_to_deck()
      G.consumeables:emplace(_card)
    end
    if #G.jokers.cards > 0 then
      return evo_item_use(self, card, area, copier)
    end
  end,
  in_pool = function(self)
    return true
  end
}

local sunstone = {
  name = "sunstone",
  key = "sunstone",
  set = "Item",
  loc_txt = {
    name = "Sun Stone",
    text = {
      "Creates a {C:attention}Sun{} card",
      "{C:attention}Evolution Card{}",
      "{C:inactive}(Must have room){}"
    }
  },
  loc_vars = function(self, info_queue, center)
    info_queue[#info_queue+1] = G.P_CENTERS.c_sun
    info_queue[#info_queue+1] = {set = 'Other', key = 'eitem'}
  end,
  pos = { x = 9, y = 3 },
  atlas = "Mart",
  cost = 4,
  evo_item = true,
  unlocked = true,
  discovered = true,
  can_use = function(self, card)
    return true
  end,
  use = function(self, card, area, copier)
    if #G.consumeables.cards + G.GAME.consumeable_buffer < G.consumeables.config.card_limit then
      local _card = create_card('Tarot', G.consumeables, nil, nil, nil, nil, 'c_sun')
      _card:add_to_deck()
      G.consumeables:emplace(_card)
    end
    if #G.jokers.cards > 0 then
      return evo_item_use(self, card, area, copier)
    end
  end,
  in_pool = function(self)
    return true
  end
}

local waterstone = {
  name = "waterstone",
  key = "waterstone",
  set = "Item",
  loc_txt = {
    name = "Water Stone",
    text = {
      "Creates a {C:attention}Star{} card",
      "{C:attention}Evolution Card{}",
      "{C:inactive}(Must have room){}"
    }
  },
  loc_vars = function(self, info_queue, center)
    info_queue[#info_queue+1] = G.P_CENTERS.c_star
    info_queue[#info_queue+1] = {set = 'Other', key = 'eitem'}
  end,
  pos = { x = 5, y = 3 },
  atlas = "Mart",
  cost = 4,
  evo_item = true,
  unlocked = true,
  discovered = true,
  can_use = function(self, card)
    return true
  end,
  use = function(self, card, area, copier)
    if #G.consumeables.cards + G.GAME.consumeable_buffer < G.consumeables.config.card_limit then
      local _card = create_card('Tarot', G.consumeables, nil, nil, nil, nil, 'c_star')
      _card:add_to_deck()
      G.consumeables:emplace(_card)
    end
    if #G.jokers.cards > 0 then
      return evo_item_use(self, card, area, copier)
    end
  end,
  in_pool = function(self)
    return true
  end
}

local thunderstone = {
  name = "thunderstone",
  key = "thunderstone",
  set = "Item",
  loc_txt = {
    name = "Thunder Stone",
    text = {
      "Creates a {C:attention}Devil{} card",
      "{C:attention}Evolution Card{}",
      "{C:inactive}(Must have room){}"
    }
  },
  loc_vars = function(self, info_queue, center)
    info_queue[#info_queue+1] = G.P_CENTERS.c_devil
    info_queue[#info_queue+1] = {set = 'Other', key = 'eitem'}
  end,
  pos = { x = 6, y = 3 },
  atlas = "Mart",
  cost = 4,
  evo_item = true,
  unlocked = true,
  discovered = true,
  can_use = function(self, card)
    return true
  end,
  use = function(self, card, area, copier)
    if #G.consumeables.cards + G.GAME.consumeable_buffer < G.consumeables.config.card_limit then
      local _card = create_card('Tarot', G.consumeables, nil, nil, nil, nil, 'c_devil')
      _card:add_to_deck()
      G.consumeables:emplace(_card)
    end
    if #G.jokers.cards > 0 then
      return evo_item_use(self, card, area, copier)
    end
  end,
  in_pool = function(self)
    return true
  end
}

local firestone = {
  name = "firestone",
  key = "firestone",
  set = "Item",
  loc_txt = {
    name = "Fire Stone",
    text = {
      "Creates a {C:attention}Lovers{} card",
      "{C:attention}Evolution Card{}",
      "{C:inactive}(Must have room){}"
    }
  },
  loc_vars = function(self, info_queue, center)
    info_queue[#info_queue+1] = G.P_CENTERS.c_lovers
    info_queue[#info_queue+1] = {set = 'Other', key = 'eitem'}
  end,
  pos = { x = 4, y = 3 },
  atlas = "Mart",
  cost = 4,
  evo_item = true,
  unlocked = true,
  discovered = true,
  can_use = function(self, card)
    return true
  end,
  use = function(self, card, area, copier)
    if #G.consumeables.cards + G.GAME.consumeable_buffer < G.consumeables.config.card_limit then
      local _card = create_card('Tarot', G.consumeables, nil, nil, nil, nil, 'c_lovers')
      _card:add_to_deck()
      G.consumeables:emplace(_card)
    end
    if #G.jokers.cards > 0 then
      return evo_item_use(self, card, area, copier)
    end
  end,
  in_pool = function(self)
    return true
  end
}

local leafstone = {
  name = "leafstone",
  key = "leafstone",
  set = "Item",
  loc_txt = {
    name = "Leaf Stone",
    text = {
      "Creates a {C:attention}World{} card",
      "{C:attention}Evolution Card{}",
      "{C:inactive}(Must have room){}"
    }
  },
  loc_vars = function(self, info_queue, center)
    info_queue[#info_queue+1] = G.P_CENTERS.c_world
    info_queue[#info_queue+1] = {set = 'Other', key = 'eitem'}
  end,
  pos = { x = 7, y = 3 },
  atlas = "Mart",
  cost = 4,
  evo_item = true,
  unlocked = true,
  discovered = true,
  can_use = function(self, card)
    return true
  end,
  use = function(self, card, area, copier)
    if #G.consumeables.cards + G.GAME.consumeable_buffer < G.consumeables.config.card_limit then
      local _card = create_card('Tarot', G.consumeables, nil, nil, nil, nil, 'c_world')
      _card:add_to_deck()
      G.consumeables:emplace(_card)
    end
    if #G.jokers.cards > 0 then
      return evo_item_use(self, card, area, copier)
    end
  end,
  in_pool = function(self)
    return true
  end
}

local linkcable = {
  name = "linkcable",
  key = "linkcable",
  set = "Item",
  loc_txt = {
    name = "Linking Cord",
    text = {
      "Creates a {C:attention}Death{} card",
      "{C:attention}Evolution Card{}",
      "{C:inactive}(Must have room){}"
    }
  },
  loc_vars = function(self, info_queue, center)
    info_queue[#info_queue+1] = G.P_CENTERS.c_death
    info_queue[#info_queue+1] = {set = 'Other', key = 'eitem'}
  end,
  pos = { x = 6, y = 4 },
  atlas = "Mart",
  cost = 4,
  evo_item = true,
  unlocked = true,
  discovered = true,
  can_use = function(self, card)
    return true
  end,
  use = function(self, card, area, copier)
    if #G.consumeables.cards + G.GAME.consumeable_buffer < G.consumeables.config.card_limit then
      local _card = create_card('Tarot', G.consumeables, nil, nil, nil, nil, 'c_death')
      _card:add_to_deck()
      G.consumeables:emplace(_card)
    end
    if #G.jokers.cards > 0 then
      return evo_item_use(self, card, area, copier)
    end
  end,
  in_pool = function(self)
    return true
  end
}

local leftovers = {
  name = "leftovers",
  key = "leftovers",
  set = "Item",
  loc_txt = {
    name = "Leftovers",
    text = {
      "Creates a {C:attention}Hanged Man{} card",
      "{C:attention}Held Card{}",
      "{C:inactive}(Must have room){}"
    }
  },
  loc_vars = function(self, info_queue, center)
    info_queue[#info_queue+1] = G.P_CENTERS.c_hanged_man
    info_queue[#info_queue+1] = {set = 'Other', key = 'hitem', vars = {"Snorlax"}}
  end,
  pos = { x = 7, y = 4 },
  atlas = "Mart",
  cost = 3,
  unlocked = true,
  discovered = true,
  can_use = function(self, card)
    return true
  end,
  use = function(self, card, area, copier)
    if #G.consumeables.cards + G.GAME.consumeable_buffer < G.consumeables.config.card_limit then
      local _card = create_card('Tarot', G.consumeables, nil, nil, nil, nil, 'c_hanged_man')
      _card:add_to_deck()
      G.consumeables:emplace(_card)
    end
  end,
  in_pool = function(self)
    return true
  end
}

local leek = {
  name = "leek",
  key = "leek",
  set = "Item",
  loc_txt = {
    name = "Leek",
    text = {
      "Creates a {C:attention}Wheel of Fortune{} card",
      "{C:attention}Held Card{}",
      "{C:inactive}(Must have room){}"
    }
  },
  loc_vars = function(self, info_queue, center)
    info_queue[#info_queue+1] = G.P_CENTERS.c_wheel_of_fortune
    info_queue[#info_queue+1] = {set = 'Other', key = 'hitem', vars = {"Farfetch\'d"}}
  end,
  pos = { x = 8, y = 4 },
  atlas = "Mart",
  cost = 3,
  unlocked = true,
  discovered = true,
  can_use = function(self, card)
    return true
  end,
  use = function(self, card, area, copier)
    if #G.consumeables.cards + G.GAME.consumeable_buffer < G.consumeables.config.card_limit then
      local _card = create_card('Tarot', G.consumeables, nil, nil, nil, nil, 'c_wheel_of_fortune')
      _card:add_to_deck()
      G.consumeables:emplace(_card)
    end
  end,
  in_pool = function(self)
    return true
  end
}

local thickclub = {
  name = "thickclub",
  key = "thickclub",
  set = "Item",
  loc_txt = {
    name = "Thick Club",
    text = {
      "Creates a {C:attention}Strength{} card",
      "{C:attention}Held Card{}",
      "{C:inactive}(Must have room){}"
    }
  },
  loc_vars = function(self, info_queue, center)
    info_queue[#info_queue+1] = G.P_CENTERS.c_strength
    info_queue[#info_queue+1] = {set = 'Other', key = 'hitem', vars = {"Cubone and Marowak"}}
  end,
  pos = { x = 9, y = 4 },
  atlas = "Mart",
  cost = 3,
  unlocked = true,
  discovered = true,
  can_use = function(self, card)
    return true
  end,
  use = function(self, card, area, copier)
    if #G.consumeables.cards + G.GAME.consumeable_buffer < G.consumeables.config.card_limit then
      local _card = create_card('Tarot', G.consumeables, nil, nil, nil, nil, 'c_strength')
      _card:add_to_deck()
      G.consumeables:emplace(_card)
    end
  end,
  in_pool = function(self)
    return true
  end
}

local teraorb = {
  name = "teraorb",
  key = "teraorb",
  set = "Item",
  loc_txt = {
    name = "Tera Orb",
    text = {
      "Applies a random",
      "{C:pink}Type{} sticker",
      "to leftmost Joker{}"
    }
  },
  loc_vars = function(self, info_queue, center)
  end,
  pos = { x = 9, y = 2 },
  atlas = "Mart",
  cost = 3,
  unlocked = true,
  discovered = true,
  can_use = function(self, card)
    return #G.jokers.cards > 0
  end,
  use = function(self, card, area, copier)
    local leftmost = G.jokers.cards[1]
    
    local poketype_list = {"Grass", "Fire", "Water", "Lightning", "Psychic", "Fighting", "Colorless", "Dark", "Metal", "Fairy", "Dragon", "Earth"}
    local poketype = pseudorandom_element(poketype_list, pseudoseed("tera"))
    
    leftmost.ability[string.lower(poketype).."_sticker"] = true
    for l, v in pairs(poketype_list) do
      if v ~= poketype then
        leftmost.ability[string.lower(v).."_sticker"] = false
      end
    end
    if leftmost.ability and leftmost.ability.extra and type(leftmost.ability.extra) == "table" and leftmost.ability.extra.ptype then
     leftmost.ability.extra.ptype = poketype
    end
    card_eval_status_text(leftmost, 'extra', nil, nil, nil, {message = "Tera!", colour = G.C.SECONDARY_SET.Spectral})
  end,
  in_pool = function(self)
    return true
  end
}

local metalcoat = {
  name = "metalcoat",
  key = "metalcoat",
  set = "Item",
  loc_txt = {
    name = "Metal Coat",
    text = {
      "Applies a {C:metal}Metal{} sticker",
      "to leftmost Joker.",
      "Creates a {C:attention}Chariot{} card",
      "{C:inactive}(Must have room){}"
    }
  },
  loc_vars = function(self, info_queue, center)
    info_queue[#info_queue+1] = G.P_CENTERS.c_chariot
  end,
  pos = { x = 6, y = 2 },
  atlas = "Mart",
  cost = 3,
  unlocked = true,
  discovered = true,
  can_use = function(self, card)
    return #G.jokers.cards > 0
  end,
  use = function(self, card, area, copier)
    local leftmost = G.jokers.cards[1]
    
    local poketype_list = {"Grass", "Fire", "Water", "Lightning", "Psychic", "Fighting", "Colorless", "Dark", "Metal", "Fairy", "Dragon", "Earth"}
    
    leftmost.ability.metal_sticker = true
    for l, v in pairs(poketype_list) do
      if v ~= "Metal" then
        leftmost.ability[string.lower(v).."_sticker"] = false
      end
    end
    if leftmost.ability and leftmost.ability.extra and type(leftmost.ability.extra) == "table" and leftmost.ability.extra.ptype then
     leftmost.ability.extra.ptype = "Metal"
    end
    card_eval_status_text(leftmost, 'extra', nil, nil, nil, {message = "Metal!", colour = G.ARGS.LOC_COLOURS["metal"]})
    
    if #G.consumeables.cards + G.GAME.consumeable_buffer < G.consumeables.config.card_limit then
      local _card = create_card('Tarot', G.consumeables, nil, nil, nil, nil, 'c_chariot')
      _card:add_to_deck()
      G.consumeables:emplace(_card)
    end
  end,
  in_pool = function(self)
    return true
  end
}

local dragonscale = {
  name = "dragonscale",
  key = "dragonscale",
  set = "Item",
  loc_txt = {
    name = "Dragon Scale",
    text = {
      "Applies a {C:dragon}Dragon{} sticker",
      "to leftmost Joker.",
      "Creates an {C:attention}Emperor{} card",
      "{C:inactive}(Must have room){}"
    }
  },
  loc_vars = function(self, info_queue, center)
    info_queue[#info_queue+1] = G.P_CENTERS.c_emperor
  end,
  pos = { x = 7, y = 2 },
  atlas = "Mart",
  cost = 3,
  unlocked = true,
  discovered = true,
  can_use = function(self, card)
    return #G.jokers.cards > 0
  end,
  use = function(self, card, area, copier)
    local leftmost = G.jokers.cards[1]
    
    local poketype_list = {"Grass", "Fire", "Water", "Lightning", "Psychic", "Fighting", "Colorless", "Dark", "Metal", "Fairy", "Dragon", "Earth"}
    
    leftmost.ability.dragon_sticker = true
    for l, v in pairs(poketype_list) do
      if v ~= "Dragon" then
        leftmost.ability[string.lower(v).."_sticker"] = false
      end
    end
    if leftmost.ability and leftmost.ability.extra and type(leftmost.ability.extra) == "table" and leftmost.ability.extra.ptype then
     leftmost.ability.extra.ptype = "Dragon"
    end
    card_eval_status_text(leftmost, 'extra', nil, nil, nil, {message = "Dragon!", colour = G.ARGS.LOC_COLOURS["dragon"]})
    
    if #G.consumeables.cards + G.GAME.consumeable_buffer < G.consumeables.config.card_limit then
      local _card = create_card('Tarot', G.consumeables, nil, nil, nil, nil, 'c_emperor')
      _card:add_to_deck()
      G.consumeables:emplace(_card)
    end
  end,
  in_pool = function(self)
    return true
  end
}

local kingsrock = {
  name = "kingsrock",
  key = "kingsrock",
  set = "Item",
  config = {max_highlighted = 1},
  loc_txt = {
    name = "King's Rock",
    text = {
      "Turns {C:attention}#1#{} selected",
      "card into a {C:attention}King{}",
      "{C:attention}Evolution Card{}",
    }
  },
  loc_vars = function(self, info_queue, center)
    info_queue[#info_queue+1] = {set = 'Other', key = 'eitem'}
    return {vars = {self.config.max_highlighted}}
  end,
  pos = { x = 5, y = 2 },
  atlas = "Mart",
  cost = 3,
  unlocked = true,
  discovered = true,
  use = function(self, card, area, copier)
    local conv_card = G.hand.highlighted[1]
    juice_flip(conv_card)
    G.E_MANAGER:add_event(Event({
        trigger = 'after',
        delay = 0.2,
        func = function()
            SMODS.change_base(conv_card, nil, "King"); return true
        end
    }))
    delay(0.5)
    juice_flip(conv_card)
  end,
  in_pool = function(self)
    return true
  end
}

return {name = "Items",
        list = {moonstone, sunstone, waterstone, leafstone, firestone, thunderstone, linkcable, leftovers, leek, thickclub, teraorb, metalcoat, dragonscale, kingsrock}
}
