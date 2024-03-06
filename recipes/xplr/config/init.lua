version = "0.21.5"

xplr.config.layouts.builtin.default = {
  Vertical = {
    config = {
      -- margin = 0,
      -- horizontal_margin = 0,
      -- vertical_margin = 0,
      constraints = {
        { Percentage = 50 },
        { Percentage = 50 },
      }
    },
    splits = {
      "Table",
      "HelpMenu",
    }
  }
}
