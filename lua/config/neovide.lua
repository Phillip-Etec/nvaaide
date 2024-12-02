if vim.g.neovide then
  -- Put anything you want to happen only in Neovide here
  vim.o.guifont = "FiraCode Nerd Font Propo:h12:w-0.5" 
  vim.opt.linespace = 0
  vim.g.neovide_scale_factor = 1.0
  vim.g.neovide_padding_top = 0
  vim.g.neovide_padding_bottom = 0
  vim.g.neovide_padding_right = 0
  vim.g.neovide_padding_left = 0
  vim.g.neovide_transparency = 1.0
  vim.g.neovide_position_animation_length = 0.23
  vim.g.neovide_scroll_animation_length = 0.35
  vim.g.neovide_hide_mouse_when_typing = true
  vim.g.neovide_refresh_rate = 30
  vim.g.neovide_refresh_rate_idle = 3
  vim.g.neovide_detach_on_quit = 'always_quit'
  vim.g.neovide_profiler = false
  vim.g.neovide_cursor_animation_length = 0.16
  vim.g.neovide_cursor_trail_size = 0.3
  vim.g.neovide_cursor_animate_command_line = false
  vim.g.neovide_cursor_vfx_mode = "pixiedust"
  vim.g.neovide_cursor_vfx_particle_density = 18.0
end
