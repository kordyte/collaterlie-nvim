<h3 align="center">
<img src="https://github.com/kordyte/collaterlie-nvim/blob/images/collaterlie240925.png" width="800" alt="Screenshot"/><br/>
Collaterlie
</h3>

A light colour scheme for neovim. It was created for use with a light-weight font.

Supports:
   * Lualine
   * Telescope
   * Treesitter
   * LSP
   * DAP
   * Neovim terminal

The code is deliberately simple. Don't expect fanciness.

# Installation
[lazy.nvim](https://github.com/folke/lazy.nvim)
```lua
{ "kordyte/collaterlie-nvim" }
```

# Usage

```vim
colorscheme collaterlie 
```

If you want your Lualine to match, then you will need to set the Lualine theme:
```lua
require('lualine').setup {
  options = {
    theme = 'collaterlie',
    ...
```
