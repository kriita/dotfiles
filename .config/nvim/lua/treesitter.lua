-- 1. Safely try to load the treesitter configs module
local status_ok, treesitter_configs = pcall(require, "nvim-treesitter.configs")

-- 2. If it is NOT installed yet, quietly exit this file and do nothing
if not status_ok then
  return
end

-- 3. If it IS installed, run your setup exactly as you had it
treesitter_configs.setup {
  highlight = {
    enable = true,
  }
}
