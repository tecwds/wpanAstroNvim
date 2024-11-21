if not vim.g.neovide then return {} end

return {
  "AstroNvim/astrocore",
  ---@type AstroCoreOpts
  opts = {
    options = {
      opt = {
        linespace = 1,
      },
      o = {
        guifont = "FantasqueSansM Nerd Font:h16",
      },
      g = {
        neovide_transparency = 0.81,
        -- transparency = 0.9,
        -- 查看 255 * 0.9，其中 0.9 对应 transparency
        neovide_backgroud_color = "0f1117" .. string.format("%x", math.floor((255 * 0.9) or 0.8)),
        -- end 设置透明度

        -- 没看出来是啥
        neovide_floating_blur_amount_x = 4.0,
        neovide_floating_blur_amount_y = 4.0,

        neovide_floating_shadow = true,
        neovide_floating_z_height = 10,
        neovide_light_angle_degrees = 45,
        neovide_light_radius = 5,
        -- 没看出来是啥

        -- 设置指针动画时间？
        neovide_position_animation_length = 0.15,

        -- 设置滑动动画时间？
        neovide_scroll_animation_length = 0.15,

        -- 滚动时下划线？
        neovide_underline_stroke_scale = 1.0,

        -- 设置刷新率
        neovide_refresh_rate = 90,

        -- 设置禁止刷新率
        -- neovide_refresh_rate_idle = 5,

        -- 确认退出
        neovide_confirm_quit = true,

        -- 记住之前的窗口大小
        neovide_remember_window_size = true,

        -- 全屏
        neovide_fullscreen = true,
      },
    },
  },
}
