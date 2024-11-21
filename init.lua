-- This file simply bootstraps the installation of Lazy.nvim and then calls other files for execution
-- This file doesn't necessarily need to be touched, BE CAUTIOUS editing this file and proceed at your own risk.
local lazypath = vim.env.LAZY or vim.fn.stdpath "data" .. "/lazy/lazy.nvim"
if not (vim.env.LAZY or (vim.uv or vim.loop).fs_stat(lazypath)) then
  -- stylua: ignore
  vim.fn.system({ "git", "clone", "--filter=blob:none", "https://github.com/folke/lazy.nvim.git", "--branch=stable", lazypath })
end
vim.opt.rtp:prepend(lazypath)

-- validate that lazy is available
if not pcall(require, "lazy") then
  -- stylua: ignore
  vim.api.nvim_echo({ { ("Unable to load lazy from: %s\n"):format(lazypath), "ErrorMsg" }, { "Press any key to exit...", "MoreMsg" } }, true, {})
  vim.fn.getchar()
  vim.cmd.quit()
end

-- 修复乱七八糟的回车键
vim.api.nvim_set_keymap('', '<kEnter>', '<Enter>', {})
vim.api.nvim_set_keymap('i', '<kEnter>', '<Enter>', {})
vim.api.nvim_set_keymap('c', '<kEnter>', '<Enter>', {})

-- if vim.g.neovide then
--   -- 字体以及字体大小
--   vim.o.guifont = "FantasqueSansM Nerd Font:h16"
--
--   -- 行间距？暂时没看出来
--   -- 行间距？暂时没看出来
--   vim.opt.linespace = 1
--
--   -- start 设置透明度
--   local alpha = function()
--     return string.format("%x", math.floor((255 * vim.g.transparency) or 0.8))
--   end
--
--   vim.g.neovide_transparency = 0.81
--   vim.g.transparency = 0.9
--   vim.g.neovide_backgroud_color = "0f1117" .. alpha()
--   -- end 设置透明度
--
--   -- 没看出来是啥
--   vim.g.neovide_floating_blur_amount_x = 4.0
-- vim.g.neovide_floating_blur_amount_y = 4.0
--
--   vim.g.neovide_floating_shadow = true
--   vim.g.neovide_floating_z_height = 10
--   vim.g.neovide_light_angle_degrees = 45
--   vim.g.neovide_light_radius = 5
--   -- 没看出来是啥
--
--   -- 设置指针动画时间？
--   vim.g.neovide_position_animation_length = 0.15
--
--   -- 设置滑动动画时间？
--   vim.g.neovide_scroll_animation_length = 0.15
--
--   -- 滚动时下划线？
--   vim.g.neovide_underline_stroke_scale = 1.0
--
--   -- 设置刷新率
--   vim.g.neovide_refresh_rate = 90
--
--   -- 设置禁止刷新率
--   vim.g.neovide_refresh_rate_idle = 5
--
--   -- 确认退出
--   vim.g.neovide_confirm_quit = true
--
--   -- 记住之前的窗口大小
--   vim.g.neovide_remember_window_size = true
--
--   -- 全屏
--   vim.g.neovide_fullscreen = true
--   vim.opt.linespace = 1
--
--   -- start 设置透明度
--   local alpha = function()
--     return string.format("%x", math.floor((255 * vim.g.transparency) or 0.8))
--   end
--
--   vim.g.neovide_transparency = 0.81
--   vim.g.transparency = 0.9
--   vim.g.neovide_backgroud_color = "0f1117" .. alpha()
--   -- end 设置透明度
--
--   -- 没看出来是啥
--   vim.g.neovide_floating_blur_amount_x = 4.0
--   vim.g.neovide_floating_blur_amount_y = 4.0
--
--   vim.g.neovide_floating_shadow = true
--   vim.g.neovide_floating_z_height = 10
--   vim.g.neovide_light_angle_degrees = 45
--   vim.g.neovide_light_radius = 5
--   -- 没看出来是啥
--
--   -- 设置指针动画时间？
--   vim.g.neovide_position_animation_length = 0.15
--
--   -- 设置滑动动画时间？
--   vim.g.neovide_scroll_animation_length = 0.15
--
--   -- 滚动时下划线？
--   vim.g.neovide_underline_stroke_scale = 1.0
--
--   -- 设置刷新率
--   vim.g.neovide_refresh_rate = 90
--
--   -- 设置禁止刷新率
--   vim.g.neovide_refresh_rate_idle = 5
--
--   -- 确认退出
--   vim.g.neovide_confirm_quit = true
--
--   -- 记住之前的窗口大小
--   vim.g.neovide_remember_window_size = true
--
--   -- 全屏
--   vim.g.neovide_fullscreen = true
--
-- end


require "lazy_setup"
require "polish"
