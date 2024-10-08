### Provided
- [Plugins Manager - Vim Plug](https://github.com/junegunn/vim-plug)
- [LSPs Manager - Mason](https://github.com/williamboman/mason-lspconfig.nvim)
- [LSP Config](https://github.com/neovim/nvim-lspconfig)
- [Parser](https://github.com/nvim-treesitter/nvim-treesitter)
- [Autocomplete](https://github.com/hrsh7th/nvim-cmp)
- [Files Finder](https://github.com/nvim-telescope/telescope.nvim)
- [Markdown](https://github.com/iamcco/markdown-preview.nvim)
- [Latex](https://github.com/lervag/vimtex)
- [Buffer-Based Filesystem](https://github.com/stevearc/oil.nvim)
- [Visual Aid for Indentation](https://github.com/lukas-reineke/indent-blankline.nvim)
- [Theme - Gruvbox](https://github.com/ellisonleao/gruvbox.nvim)
- [Snippets creation - LuaSnip](https://github.com/L3MON4D3/LuaSnip)

### Requirements
- Neovim v0.10+ (for native neovim snippets - if not, use a different snippet engine and specify it on the `autocmp_config.lua` file)
- [latexmk](https://www.cantab.net/users/johncollins/latexmk/index.html) - or some latex compiler backend compatible with VimTeX.
- [zathura](https://pwmt.org/projects/zathura/) - or some document viewer compatible with VimTeX (should be set in the `vimtex_config.lua` file)
- [ripgrep](https://github.com/BurntSushi/ripgrep)
- [fd](https://github.com/sharkdp/fd)

### Why
I've been using NeoVim for quite a long time now and each time I had to set a new environment I would use distributions, e.g., LunarVim, NvChad, kickstart.nvim; most of them settle right enough with me —they are fast, very easy to use and get up and running— but I will always end up saying: "Next time I will configure my own."
Finally, here it is, my first attempt to fulfill that long-awaited promise.
For this configuration everything has been deeply thought of; each plugin, configuration, keymap, etc., is there to serve some specific purpose for me.

[This](https://github.com/CrgioYalux/neovim_config) was my configuration up until now. It's basically taken from [here](https://www.youtube.com/watch?v=stqUbv-5u2s) (which was [recently updated](https://www.youtube.com/watch?v=m8C0Cq9Uv9o), althought I did not try it) but I started adding some things on top of it and did not care about the mess I was doing. So much laziness for cleaning and fixing it got in the way that I found there the perfect time to start a new one from scratch inspired by it.

### Relevant Links
- https://castel.dev/post/lecture-notes-1/
- https://ejmastnak.com/tutorials/vim-latex/vimtex/#getting-started/
- https://github.com/SeniorMars/dotfiles/tree/master/latex_template/
- https://www.overleaf.com/learn/latex/Learn_LaTeX_in_30_minutes/
- https://vonheikemen.github.io/devlog/tools/configuring-neovim-using-lua/

### Todo - good to have
- Some git utils
