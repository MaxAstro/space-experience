-- Rocket telemetry analyser recipe
local rocket_telemtry_analyser_recipe = {
    type = "recipe",
    name = "spx-rocket-telemetry-analyzer",
    icon = "MISSING",
    enabled = false,
    energy_required = 5, -- time to craft in seconds (at crafting speed 1)
    ingredients = {
        {type = "item", name = "steel-plate", amount = 100},
        {type = "item", name = "processing-unit", amount = 25},
        {type = "item", name = "selector-combinator", amount = 2},
        {type = "item", name = "radar", amount = 5}
    },
    results = {
        {type = "item", name = "spx-rocket-telemetry-analyzer", amount = 1}
    }
}

-- Rocket control unit recipe, basic version
local rocket_control_unit_recipe = {
    type = "recipe",
    name = "spx-rocket-control-unit",
    icon = "MISSING",
    enabled = false,
    energy_required = 5,
    ingredients = {
        {type = "item", name = "processing-unit", amount = 3},
        {type = "item", name = "arithmetic-combinator", amount = 2},
        {type = "item", name = "decider-combinator", amount = 2},
        {type = "item", name = "radar", amount = 1}
    },
    results = {
        {type = "item", name = "spx-rocket-telemetry-analyzer", amount = 1}
    }
}

-- Telemetry analysis recipe
local telemetry_analysis_recipe ={
    type = "recipe",
    name = "spx-telemetry=analysis",
    icon = "MISSING",
    enabled = false,
    energy_required = 60,
    ingredients = {
        {type = "item", name = "spx-rocket-telemetry", amount = 1}
    },
    results = {
        {type = "item", name = "spx-analysed-telemetry", amount = 1}
    }
}

-- Adjust vanilla rocket part recipe
data.raw["recipe"]["rocket-part"].ingredients = {
    {type = "item", name = "low-density-structure", amount = 4},
    {type = "item", name = "rocket-fuel", amount = 4},
    {type = "item", name = "spx-rocket-control-unit", amount = 2},
}
data.raw["recipe"]["rocket-part"].energy_required = 5

-- Adjust vanilla rocket silo
data.raw["rocket-silo"]["rocket-silo"].rocket_parts_required = 40

data:extend{
    rocket_telemtry_analyser_recipe,
    rocket_control_unit_recipe
}