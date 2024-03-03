# geckscript.nvim

lsp-config setup for [geckscript-lsp](https://github.com/WarZone762/geckscript-lsp) and language
highlighting for geckscript for Neovim

## Installation

Requires [lsp-config](https://github.com/neovim/nvim-lspconfig)

You can install the language server [npm](https://www.npmjs.com/package/geckscript-lsp)

```sh
npm i -g geckscript-lsp
```

### [lazy.nvim](https://github.com/folke/lazy.nvim)

```lua
{
    "WarZone762/geckscript.nvim",
    config = function()
        require("geckscript").setup({
            -- configuration is passed directly to lsp-config
        })
    end,
}
```

### [packer.nvim](https://github.com/wbthomason/packer.nvim)

```lua
use {
    "WarZone762/geckscript.nvim",
    config = function()
        require("geckscript").setup({
            -- configuration is passed directly to lsp-config
        })
    end,
}
```

## Configuration

If you do not have **geckscript-lsp** in you `PATH`, make sure you point `cmd` to the location of
your **geckscript-lsp**

```lua
require("geckscript").setup({
    ...
    cmd = { "/path/to/your/geckscript-lsp.js" }
    ...
})
```
