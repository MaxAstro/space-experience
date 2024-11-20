-- Rocket telemetry analyzer
local telemetry_analyzer = {
    type = "assembling-machine",
    name = "spx-rocket-telemetry-analyzer",
    icon = "MISSING",
    flags = {"placeable-neutral","player-creation", "no-automated-item-removal", "no-automated-item-insertion"},
    minable = {mining_time = 0.2, result = "spx-rocket-telemetry-analyzer"},
    fast_replaceable_group = "spx-rocket-telemetry-analyzer",
    max_health = 350,
    corpse = "radar-remnants",
    dying_explosion = "radar-explosion",
    icon_draw_specification = {scale = 2, shift = {0, -0.3}},
    collision_box = {{-1.4, -1.4}, {1.4, 1.4}},
    collision_mask = {layers={item=true, object=true, player=true, water_tile=true, elevated_rail=true, is_object=true, is_lower_object=true}},
    selection_box = {{-1.5, -1.5}, {1.5, 1.5}},
    drawing_box_vertical_extension = 0.3,
    module_slots = 3,
    allowed_effects = {"consumption", "speed", "pollution"},
    crafting_categories = {"telemetry-analyzer"},
    crafting_speed = 0.5,
    energy_source =
    {
        type = "electric",
        usage_priority = "secondary-input",
        emissions_per_minute = { pollution = 6 },
    },
    fixed_recipe = "rocket-telemetry",
    energy_usage = "1000kW",

    integration_patch =
    {
      filename = "__base__/graphics/entity/radar/radar-integration.png",
      priority = "low",
      width = 238,
      height = 216,
      shift = util.by_pixel(1.5, 4.0),
      scale = 0.5
    },
    pictures =
    {
      layers =
      {
        {
          filename = "__base__/graphics/entity/radar/radar.png",
          priority = "low",
          width = 196,
          height = 254,
          apply_projection = false,
          direction_count = 64,
          line_length = 8,
          shift = util.by_pixel(1.0, -16.0),
          scale = 0.5
        },
        {
          filename = "__base__/graphics/entity/radar/radar-shadow.png",
          priority = "low",
          width = 336,
          height = 170,
          apply_projection = false,
          direction_count = 64,
          line_length = 8,
          shift = util.by_pixel(39.0, 6.0),
          draw_as_shadow = true,
          scale = 0.5
        }
      }
    },
    impact_category = "metal",
    working_sound =
    {
      sound = { filename = "__base__/sound/radar.ogg", volume = 0.8 },
      max_sounds_per_type = 3,
      use_doppler_shift = false
    },
    rotation_speed = 0.01,
    water_reflection =
    {
      pictures =
      {
        filename = "__base__/graphics/entity/radar/radar-reflection.png",
        priority = "extra-high",
        width = 28,
        height = 32,
        shift = util.by_pixel(5, 35),
        variation_count = 1,
        scale = 5
      },
      rotate = false,
      orientation_to_variation = false
    },
    is_military_target = false
}

data:extend{telemetry_analyzer}