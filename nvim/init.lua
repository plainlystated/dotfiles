local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

require("lazy").setup({
  "folke/which-key.nvim",
  { "folke/neoconf.nvim", cmd = "Neoconf" },
  "folke/neodev.nvim",
  "tpope/vim-fugitive",
  "rebelot/kanagawa.nvim",
  "preservim/nerdtree",
  "ntpeters/vim-better-whitespace",
  { "nvim-telescope/telescope.nvim", dependencies = { 'nvim-lua/plenary.nvim' }},

  -- replaced by lsp-zero
  --"neovim/nvim-lspconfig",
  --"hrsh7th/nvim-cmp",
  --"onsails/lspkind.nvim",
  --"hrsh7th/cmp-nvim-lsp",
  --"L3MON4D3/LuaSnip",

  "mattn/emmet-vim",
  {
    "ray-x/lsp_signature.nvim",
    event = "VeryLazy",
    opts = {},
    config = function(_, opts) require'lsp_signature'.setup(opts) end
  },
  {
    'nvimdev/lspsaga.nvim',
    config = function()
      require('lspsaga').setup({})
    end,
    dependencies = {
        --'nvim-treesitter/nvim-treesitter' -- optional
        'nvim-tree/nvim-web-devicons'     -- optional
    }
  },


  -- lsp-zero and deps
  {'VonHeikemen/lsp-zero.nvim', branch = 'v3.x'},
  {'neovim/nvim-lspconfig'},
  {'hrsh7th/cmp-nvim-lsp'},
  {'hrsh7th/nvim-cmp'},
  {'L3MON4D3/LuaSnip'}
})

vim.opt.ignorecase = true
vim.opt.smartcase = true
vim.opt.tabstop = 2
vim.opt.softtabstop = 2
vim.opt.shiftwidth = 2
vim.opt.expandtab = true
vim.opt.number = true
vim.opt.mouse = ""
vim.opt.smartindent = true
vim.opt.breakindent = true


vim.cmd("filetype plugin indent on")

vim.cmd("colorscheme kanagawa")

vim.api.nvim_set_keymap("n", "<leader>ws", ":ToggleWhitespace<CR>", {})
