# Kitty
[Kitty](https://sw.kovidgoyal.net/kitty/) is a fast, feature-rich, and highly customizable terminal emulator.

## Requirements
### 1. Nerd Font
This configuration uses [JetBrains Mono](https://www.jetbrains.com/lp/mono/) as it's monospaced font for `kitty`. You can locate this font in the `nerd-fonts` directory at the root of this Git repository.
If you prefer any other font, update the following section in the `kitty.conf` file.
```
Fonts {{{
        font_family JetBrainsMono Nerd Font
                bold_font        auto
                italic_font      auto
                bold_italic_font auto
                font_size 13
                adjust_line_height 1
}}}
```
Replace `JetBrainsMono Nerd Font` with the font of your choice.
### 2. Compositor
A [compositor](https://en.wikipedia.org/wiki/Compositing_window_manager) is a software component that manages the rendering and blending of graphical elements, enhancing visual effects and performance in graphical user interfaces.
Background transparency in `kitty` necessitates the presence of a compositor.
## Applying the configuration
To apply these configurations, place the `kitty.conf` file into `~/.config/kitty/`
