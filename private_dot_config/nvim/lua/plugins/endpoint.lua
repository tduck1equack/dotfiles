return {
  "zerochae/endpoint.nvim",
  dependencies = {
    -- Choose one or more pickers (all optional):
    "folke/snacks.nvim", -- For snacks picker
    -- vim.ui.select picker works without dependencies
  },
  cmd = { "Endpoint", "EndpointRefresh" },
  config = function()
    require("endpoint").setup()
  end,
}
