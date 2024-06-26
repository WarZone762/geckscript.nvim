local M = {};

function M.setup(opts)
    vim.filetype.add({
        extension = {
            gek = "geckscript",
            geck = "geckscript",
        }
    })

    local util = require("lspconfig.util")
    local cmd = { "geckscript-lsp", "--stdio" }

    local default_config = {
        default_config = {
            cmd = cmd,
            filetypes = { "geckscript" },
            root_dir = util.find_git_ancestor,
            single_file_support = true,
        },
        docs = {
            description = [[
    https://github.com/WarZone762/geckscript-lsp
    ]],
            default_config = {
                root_dir = [[util.find_git_ancestor]],
            },
        },
    }

    local configs = require("lspconfig.configs")
    configs["geckscript-lsp"] = default_config
    configs["geckscript-lsp"].setup(opts)
end

return M
