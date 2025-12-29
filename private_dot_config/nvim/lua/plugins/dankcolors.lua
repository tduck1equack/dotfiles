return {
	{
		"RRethy/base16-nvim",
		priority = 1000,
		config = function()
			require('base16-colorscheme').setup({
				base00 = '#181825',
				base01 = '#5c6370',
				base02 = '#478582',
				base03 = '#7aa9a1',
				base04 = '#abb2bf',
				base05 = '#94e3d6',
				base06 = '#94e2d5',
				base07 = '#ffffff',

				base08 = '#42a695',
				base09 = '#dbc87b',
				base0A = '#e8d897',
				base0B = '#7ad66e',
				base0C = '#90e086',
				base0D = '#e05f6b',
				base0E = '#e74d55',
				base0F = '#38896d',
			})

			vim.api.nvim_set_hl(0, 'Visual', {
				bg = '#478582',
				fg = '#ffffff',
				bold = true
			})

			vim.api.nvim_set_hl(0, 'LineNr', {
				fg = '#5c6370'
			})

			vim.api.nvim_set_hl(0, 'CursorLineNr', {
				fg = '#94e2d5',
				bold = true
			})

			local current_file_path = vim.fn.stdpath("config") .. "/lua/plugins/dankcolors.lua"

			if not _G._matugen_theme_watcher then
				local uv = vim.uv or vim.loop
				_G._matugen_theme_watcher = uv.new_fs_event()

				_G._matugen_theme_watcher:start(current_file_path, {}, vim.schedule_wrap(function()
					local new_spec = dofile(current_file_path)

					if new_spec and new_spec[1] and new_spec[1].config then
						new_spec[1].config()
						print("Theme reload")
					end
				end))
			end
		end
	}
}
