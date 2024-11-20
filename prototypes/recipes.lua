-- Rocket telemetry analyser recipe
local rocket_telemtry_analyser_recipe = {
    type = "recipe",
    name = "spx-rocket-telemetry-analyzer",
    category = "advanced-crafting",
    icon = "__scrap-reprocessor__/graphics/icons/chemical-stager-icon.png",
    enabled = false,
    energy_required = 10, -- time to craft in seconds (at crafting speed 1)
    surface_conditions = {
        {property = "magnetic-field", min = 99}
    },
    ingredients = scrap_reprocesser_ingredients,
    results = {
        {type = "item", name = "sr-scrap-reprocessor", amount = 1}
    }
}