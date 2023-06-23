vim.opt.termguicolors = true

require("bufferline").setup {
    options = {
        -- use nvim lsp
        diagnostics = "nvim_lsp",
        -- tree offsets
        offsets = {{
            filetype = "NvimTree",
            text = "File Explorer",
            highlight = "Directory",
            text_align = "left"
        }}
    }
}
