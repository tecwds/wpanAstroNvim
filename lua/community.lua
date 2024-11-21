-- AstroCommunity: import any community modules here
-- We import this file in `lazy_setup.lua` before the `plugins/` folder.
-- This guarantees that the specs are processed before any user plugins.

---@type LazySpec
return {
  "AstroNvim/astrocommunity",
  { import = "astrocommunity.recipes.neovide" },
  { import = "astrocommunity.editing-support.ultimate-autopair-nvim" },
  { import = "astrocommunity.colorscheme.catppuccin" },
  { import = "astrocommunity.indent.indent-rainbowline" },
  { import = "astrocommunity.editing-support.auto-save-nvim" },

  -- lua 包
  { import = "astrocommunity.pack.lua" },
  -- markdown 包
  { import = "astrocommunity.pack.markdown" },
  -- { import = "astrocommunity.pack.rust" },
  -- { import = "astrocommunity.pack.cpp" },
  -- { import = "astrocommunity.pack.cmake" },
  -- import/override with your plugins folder
}
