# Agent Guidelines for Neovim Config

## Architecture
This is an **AstroNvim v5+ user configuration** using Lazy.nvim plugin manager.
- **Entry point**: `init.lua` (bootstraps Lazy.nvim, requires `lazy_setup.lua`)
- **Plugin configuration**: `lua/plugins/` (AstroNvim plugin overrides + custom configs)
- **User plugins**: `lua/user/plugins/` (for additional user-defined plugins)
- **Community modules**: `lua/community.lua` (AstroNvim community plugin imports)
- **Post-setup**: `lua/polish.lua` (runs last, for manual Lua configurations)

## Code Style & Conventions
- **Language**: Lua (Neovim config)
- **Formatter**: Stylua with 2-space indentation, 120 column width, double quotes preferred
- **Linter**: Selene (standard: neovim) with relaxed rules for global_usage, mixed tables
- **Type hints**: Use `---@type` and `---@return` annotations for LSP (Lua Language Server)
- **Plugin specs**: All plugins use LazySpec format (table-based Lazy.nvim spec)
- **Imports**: Use `require("module")` for dependencies and AstroNvim defaults

## Build/Lint/Test Commands
- **Format**: `stylua lua/` (apply Stylua formatting)
- **Lint**: `selene lua/` (check with Selene linter)
- **Validate**: `nvim --noplugin -u lua/lazy_setup.lua +quit` (check bootstrap works)
- **Start editor**: `nvim` (loads config and plugins via Lazy.nvim)

## Key Files to Modify
- Plugin configs: `lua/plugins/astrocore.lua`, `astrolsp.lua`, `astroui.lua`
- Custom plugins: Create new `lua/plugins/*.lua` files
- Bootstrap/setup issues: Edit `lua/lazy_setup.lua` (be cautious)
