# Agent Notes

## 2024-11-06
- Added `yetone/avante.nvim` under `lua/plugins/avante.lua` for AI-assisted workflow. Build uses `make` (PowerShell fallback for Windows); ensure `make` is available when syncing plugins.
- Plugin expects an API provider; set `AVANTE_PROVIDER` env var (e.g. `claude`, `openai`) and corresponding API key envs before use. Defaults fall back to plugin builtin if unset.
- Render markdown dependency configured via `MeanderingProgrammer/render-markdown.nvim` with `ft = {"markdown", "Avante"}`. Confirm markdown renderer keeps `Avante` filetype support if plugin list changes.
- Input provider auto-switches: prefers Snacks (already non-lazy) then Dressing. Adjust in `opts` if those plugins are removed or replaced.
- Key bindings: `<leader>aa` triggers `:AvanteAsk`, `<leader>at` toggles the sidebar.
