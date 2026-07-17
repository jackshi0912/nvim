vim.opt.guicursor = ""

vim.opt.nu = true
vim.opt.relativenumber = true

vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true

-- Dart-specific overrides
vim.api.nvim_create_autocmd("FileType", {
  pattern = "dart",
  callback = function()
    vim.opt_local.tabstop = 2
    vim.opt_local.softtabstop = 2
    vim.opt_local.shiftwidth = 2
    -- expandtab is already globally true, so no need to set it again here
  end,
})

vim.opt.smartindent = true

vim.opt.wrap = false

vim.opt.swapfile = false
vim.opt.backup = false
vim.opt.undodir = os.getenv("HOME") .. "/.vim/undodir"
vim.opt.undofile = true

vim.opt.hlsearch = false
vim.opt.incsearch = true

vim.opt.termguicolors = true

vim.opt.scrolloff = 8
vim.opt.signcolumn = "yes"
vim.opt.isfname:append("@-@")

vim.opt.updatetime = 50

vim.opt.colorcolumn = "80"

vim.filetype.add({ extension = { templ = "templ" } })
vim.filetype.add({ extension = { go = "go" } })

vim.api.nvim_create_autocmd('FileType', {
  desc = 'Enable native tree-sitter highlighting globally when available',
  callback = function(args)
    -- Neovim 0.12 pattern: safely verify if a parser is installed
    if vim.treesitter.get_parser(args.buf, nil, { error = false }) then
      vim.treesitter.start(args.buf)
    end
  end,
})

