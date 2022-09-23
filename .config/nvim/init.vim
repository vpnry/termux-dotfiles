" thay telex bằng VNI và VIQR
" set keymap=vietnamese-telex

" syntax on " highlight syntax
set number " Show line number
set relativenumber " Show relative line number

" Spelling
" set spell spelllang=en_gb

set autoindent
set shiftwidth=2
set softtabstop=2
set tabstop=2
set smarttab

" a few key mapping
inoremap jk <ESC> " type jk = ESC
let mapleader = ","

" Save close create a new tab file
map fs <ESC>:w<cr> " save file
map fc <ESC>:wq<cr> " save and quit
map fq <ESC>:q!<cr> " not save and quit 
map fn <ESC>:tabnew<cr> " new tab 

" ----- switch between tabs
map <A-Right> gt 
map <A-Left> gT 
map tn :tabnew<cr>
map tc :tabclose<cr>
map <C-w> :tabclose<cr> 
" ----- switch between tabs

" ----- Find & replace -----
" Use ripgrep for faster grep
if executable("rg")
set grepprg=rg\ --vimgrep 
endif

set ignorecase smartcase "search will be case-sensative if it contains Uppercase, require set ignorecase
set hlsearch " high light Search
set incsearch " show search results as you type
" Select a word in Visual mode, press Ctrl + r to find and replace https://stackoverflow.com/a/676619
vnoremap <C-r> "hy:%s/<C-r>h//g<left><left>

" Add sthing in font in visual mode
vnoremap . :norm.<CR>

" ------------ far.vim find & replace
set lazyredraw            " improve scrolling performance when navigating through large results
set regexpengine=1        " use old regexp engine
let g:far#enable_undo=1
let g:far#auto_preview=0
" Use Ripgrep to find candidate, requires ripgrep installed
" let g:far#source='rg'
" maximum amount of candidates. Default 1000
let g:far#limit=999999999
" let g:far#glob_mode='native'

" Find only :Farf pattern **/*.py
map ff :Farf<cr>
" Find and Replace
map fr :Farr<cr> 
" Confirm replace action for Far.vim
map fd :Fardo<cr>
" shortcut for far.vim find
nnoremap <silent> <A-f>  :Farf<cr>
vnoremap <silent> <A-f>  :Farf<cr>
" shortcut for far.vim replace
nnoremap <silent> <A-r>  :Farr<cr>
vnoremap <silent> <A-r>  :Farr<cr>
" ------------ far.vim find & replace
" ----- Find & replace -----


" ------------ NerdTree ------------
" nnoremap <C-n> :NERDTreeToggle<CR>
map <silent> <C-n> :NERDTreeToggle<CR>

" Start NERDTree when Vim is started without file arguments. https://github.com/preservim/nerdtree
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists('s:std_in') | NERDTree | endif
" ------------ NerdTree ------------


" UFO folding plugin is another choice. Here I just use the simple indentation method.
" Shortcuts: zC
" za toggle
" zo/zO
" zM/zR fold/unfold all
set foldmethod=indent
set nofoldenable

call plug#begin(stdpath('data') . '/plugged')



" Surround around
Plug 'kylechui/nvim-surround'
" Php formatter
" Can use shift + v then =; or press gg=G
" Translate
" Plug 'potamides/pantran.nvim'


" Folding UFO
" Plug 'kevinhwang91/promise-async' " must loaded before nvim-ufo
" Plug 'kevinhwang91/nvim-ufo'

" Dracula theme 1:
" Plug 'dracula/vim', { 'as': 'dracula' }
" This Dracula theme is better, it supports more plugins:
Plug 'Mofiqul/dracula.nvim'

" Color in statusline
Plug 'itchyny/lightline.vim'

" Find and replace far.vim
Plug 'brooth/far.vim'

" vim-surround
Plug 'https://github.com/tpope/vim-surround'


"NerdTree
Plug 'https://github.com/preservim/nerdtree' 
"For Commenting gcc & gc
Plug 'https://github.com/tpope/vim-commentary' 

" From ------ https://github.com/hrsh7th/nvim-cmp
Plug 'neovim/nvim-lspconfig'
Plug 'hrsh7th/cmp-nvim-lsp'
Plug 'hrsh7th/cmp-buffer'
Plug 'hrsh7th/cmp-path'
Plug 'hrsh7th/cmp-cmdline'
Plug 'hrsh7th/nvim-cmp'
" End ------ https://github.com/hrsh7th/nvim-cmp


" Grammar checkers
" Plug 'brymer-meneses/grammar-guard.nvim'
" Plug 'williamboman/nvim-lsp-installer'

" Intro screen
" Plug 'mhinz/vim-startify'

" Python pep8
Plug 'tell-k/vim-autopep8'

" Treesitter-based highlighting, after installed, run :TSInstall language
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}

" Start ------ https://x-team.com/blog/neovim-javascript/amp/

" Auto complete, prettier and tslinting
Plug 'neoclide/coc.nvim', {'branch': 'master', 'do': 'yarn install --frozen-lockfile'}

" list of CoC extensions needed
let g:coc_global_extensions = ['coc-tslint-plugin', 'coc-tsserver', 'coc-css', 'coc-html', 'coc-json', 'coc-prettier']

Plug 'jiangmiao/auto-pairs' "this will auto close ( [ {

" End ------ https://x-team.com/blog/neovim-javascript/amp/

call plug#end()


colorscheme dracula

" startify screen
" let g:startify_custom_header = 'startify#pad(startify#fortune#quote())'

" Auto format on save python file
let g:autopep8_on_save = 1
let g:autopep8_disable_show_diff = 1

" Auto format on saving php file 


" Cursor modes
let &t_SI = "\<esc>[5 q" " I beam cursor for insert mode
let &t_SR = "\<esc>[3 q" " underline blinking cursor for replace mode
let &t_EI = "\<esc>[4 q" " underline cursor for normal mode

" Add Prettier format command
command! -nargs=0 Prettier :CocCommand prettier.formatFile


" From ---- https://github.com/neoclide/coc.nvim
" Set internal encoding of vim, not needed on neovim, since coc.nvim using some
" unicode characters in the file autoload/float.vim

set encoding=utf-8

" TextEdit might fail if hidden is not set.
set hidden

" Some servers have issues with backup files, see #649.
set nobackup
set nowritebackup

" Give more space for displaying messages.
set cmdheight=2

" Having longer updatetime (default is 4000 ms = 4 s) leads to noticeable
" delays and poor user experience.
set updatetime=300

" Don't pass messages to |ins-completion-menu|.
set shortmess+=c

" Always show the signcolumn, otherwise it would shift the text each time
" diagnostics appear/become resolved.
if has("nvim-0.5.0") || has("patch-8.1.1564")
  " Recently vim can merge signcolumn and number column into one
  set signcolumn=number
else
  set signcolumn=yes
endif

" Use tab for trigger completion with characters ahead and navigate.
" NOTE: Use command ':verbose imap <tab>' to make sure tab is not mapped by
" other plugin before putting this into your config.
inoremap <silent><expr> <TAB>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ coc#refresh()
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

" Use <c-space> to trigger completion.
if has('nvim')
  inoremap <silent><expr> <c-space> coc#refresh()
else
  inoremap <silent><expr> <c-@> coc#refresh()
endif

" Make <CR> auto-select the first completion item and notify coc.nvim to
" format on enter, <cr> could be remapped by other vim plugin
inoremap <silent><expr> <cr> pumvisible() ? coc#_select_confirm()
                              \: "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"

" Use `[g` and `]g` to navigate diagnostics
" Use `:CocDiagnostics` to get all diagnostics of current buffer in location list.
nmap <silent> [g <Plug>(coc-diagnostic-prev)
nmap <silent> ]g <Plug>(coc-diagnostic-next)

" GoTo code navigation.
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)

" Use K to show documentation in preview window.
nnoremap <silent> K :call <SID>show_documentation()<CR>

function! s:show_documentation()
  if (index(['vim','help'], &filetype) >= 0)
    execute 'h '.expand('<cword>')
  elseif (coc#rpc#ready())
    call CocActionAsync('doHover')
  else
    execute '!' . &keywordprg . " " . expand('<cword>')
  endif
endfunction

" Highlight the symbol and its references when holding the cursor.
autocmd CursorHold * silent call CocActionAsync('highlight')

" Symbol renaming.
nmap <leader>rn <Plug>(coc-rename)

" Formatting selected code.
xmap <leader>f  <Plug>(coc-format-selected)
nmap <leader>f  <Plug>(coc-format-selected)

augroup mygroup
  autocmd!
  " Setup formatexpr specified filetype(s).
  autocmd FileType typescript,json setl formatexpr=CocAction('formatSelected')
  " Update signature help on jump placeholder.
  autocmd User CocJumpPlaceholder call CocActionAsync('showSignatureHelp')
augroup end

" Applying codeAction to the selected region.
" Example: `<leader>aap` for current paragraph
xmap <leader>a  <Plug>(coc-codeaction-selected)
nmap <leader>a  <Plug>(coc-codeaction-selected)

" Remap keys for applying codeAction to the current buffer.
nmap <leader>ac  <Plug>(coc-codeaction)
" Apply AutoFix to problem on the current line.
nmap <leader>qf  <Plug>(coc-fix-current)

" Map function and class text objects
" NOTE: Requires 'textDocument.documentSymbol' support from the language server.
xmap if <Plug>(coc-funcobj-i)
omap if <Plug>(coc-funcobj-i)
xmap af <Plug>(coc-funcobj-a)
omap af <Plug>(coc-funcobj-a)
xmap ic <Plug>(coc-classobj-i)
omap ic <Plug>(coc-classobj-i)
xmap ac <Plug>(coc-classobj-a)
omap ac <Plug>(coc-classobj-a)

" Remap <C-f> and <C-b> for scroll float windows/popups.
if has('nvim-0.4.0') || has('patch-8.2.0750')
  nnoremap <silent><nowait><expr> <C-f> coc#float#has_scroll() ? coc#float#scroll(1) : "\<C-f>"
  nnoremap <silent><nowait><expr> <C-b> coc#float#has_scroll() ? coc#float#scroll(0) : "\<C-b>"
  inoremap <silent><nowait><expr> <C-f> coc#float#has_scroll() ? "\<c-r>=coc#float#scroll(1)\<cr>" : "\<Right>"
  inoremap <silent><nowait><expr> <C-b> coc#float#has_scroll() ? "\<c-r>=coc#float#scroll(0)\<cr>" : "\<Left>"
  vnoremap <silent><nowait><expr> <C-f> coc#float#has_scroll() ? coc#float#scroll(1) : "\<C-f>"
  vnoremap <silent><nowait><expr> <C-b> coc#float#has_scroll() ? coc#float#scroll(0) : "\<C-b>"
endif

" Use CTRL-S for selections ranges.
" Requires 'textDocument/selectionRange' support of language server.
nmap <silent> <C-s> <Plug>(coc-range-select)
xmap <silent> <C-s> <Plug>(coc-range-select)

" Add `:Format` command to format current buffer.
command! -nargs=0 Format :call CocAction('format')

" Add `:Fold` command to fold current buffer.
command! -nargs=? Fold :call     CocAction('fold', <f-args>)

" Add `:OR` command for organize imports of the current buffer.
command! -nargs=0 OR   :call     CocAction('runCommand', 'editor.action.organizeImport')

" Add (Neo)Vim's native statusline support.
" NOTE: Please see `:h coc-status` for integrations with external plugins that
" provide custom statusline: lightline.vim, vim-airline.
set statusline^=%{coc#status()}%{get(b:,'coc_current_function','')}

" Mappings for CoCList
" Show all diagnostics.
nnoremap <silent><nowait> <space>a  :<C-u>CocList diagnostics<cr>
" Manage extensions.
nnoremap <silent><nowait> <space>e  :<C-u>CocList extensions<cr>
" Show commands.
nnoremap <silent><nowait> <space>c  :<C-u>CocList commands<cr>
" Find symbol of current document.
nnoremap <silent><nowait> <space>o  :<C-u>CocList outline<cr>
" Search workspace symbols.
nnoremap <silent><nowait> <space>s  :<C-u>CocList -I symbols<cr>
" Do default action for next item.
nnoremap <silent><nowait> <space>j  :<C-u>CocNext<CR>
" Do default action for previous item.
nnoremap <silent><nowait> <space>k  :<C-u>CocPrev<CR>
" Resume latest coc list.
nnoremap <silent><nowait> <space>p  :<C-u>CocListResume<CR>

" pnry change bgclor Termux
highlight CocFloating ctermbg=8

" End ---- https://github.com/neoclide/coc.nvim


" ===========
set completeopt=menu,menuone,noselect

lua <<EOF
  -- Setup nvim-cmp 
  local cmp = require'cmp'

  cmp.setup({
    snippet = {
      -- REQUIRED - you must specify a snippet engine
      expand = function(args)
        vim.fn["vsnip#anonymous"](args.body) -- For `vsnip` users.
        -- require('luasnip').lsp_expand(args.body) -- For `luasnip` users.
        -- vim.fn["UltiSnips#Anon"](args.body) -- For `ultisnips` users.
        -- require'snippy'.expand_snippet(args.body) -- For `snippy` users.
      end,
    },
    mapping = {
      ['<C-d>'] = cmp.mapping(cmp.mapping.scroll_docs(-4), { 'i', 'c' }),
      ['<C-f>'] = cmp.mapping(cmp.mapping.scroll_docs(4), { 'i', 'c' }),
      ['<C-Space>'] = cmp.mapping(cmp.mapping.complete(), { 'i', 'c' }),
      ['<C-y>'] = cmp.config.disable, -- Specify `cmp.config.disable` if you want to remove the default `<C-y>` mapping.
      ['<C-e>'] = cmp.mapping({
        i = cmp.mapping.abort(),
        c = cmp.mapping.close(),
      }),
      ['<CR>'] = cmp.mapping.confirm({ select = true }),
    },
    sources = cmp.config.sources({
      { name = 'nvim_lsp' },
      { name = 'vsnip' }, -- For vsnip users.
      -- { name = 'luasnip' }, -- For luasnip users.
      -- { name = 'ultisnips' }, -- For ultisnips users.
      -- { name = 'snippy' }, -- For snippy users.
    }, {
      { name = 'buffer' },
    })
  })

  -- Use buffer source for `/` (if you enabled `native_menu`, this won't work anymore).
  cmp.setup.cmdline('/', {
    sources = {
      { name = 'buffer' }
    }
  })

  -- Use cmdline & path source for ':' (if you enabled `native_menu`, this won't work anymore).
  cmp.setup.cmdline(':', {
    sources = cmp.config.sources({
      { name = 'path' }
    }, {
      { name = 'cmdline' }
    })
  })

  -- Setup lspconfig.
  local capabilities = require('cmp_nvim_lsp').update_capabilities(vim.lsp.protocol.make_client_capabilities())
  
  -- Replace <YOUR_LSP_SERVER> with each lsp server you've enabled.
  
  -- Enable (broadcasting) snippet capability for completion
  capabilities.textDocument.completion.completionItem.snippetSupport = true


  require('lspconfig')['pylsp'].setup {
    capabilities = capabilities
  }
  
  -- HTML 
  require('lspconfig')['html'].setup {
    capabilities = capabilities
  }
  require('lspconfig')['cssls'].setup {
    capabilities = capabilities
  }
  
  -- bashls requires: npm i -g bash-language-server
  require('lspconfig')['bashls'].setup {
    capabilities = capabilities
  }

  
  -- require('lspconfig')['bashls'].setup{}
  
  
require'nvim-treesitter.configs'.setup {
  -- A list of parser names, or "all"
  ensure_installed = { "html", "css", "python", "php", "javascript"},

  -- Install parsers synchronously (only applied to `ensure_installed`)
  sync_install = false,

  -- List of parsers to ignore installing (for "all")
  ignore_install = { "dukkha" },

  highlight = {
    -- `false` will disable the whole extension
    enable = true,

    -- NOTE: these are the names of the parsers and not the filetype. (for example if you want to
    -- disable highlighting for the `tex` filetype, you need to include `latex` in this list as this is
    -- the name of the parser)
    -- list of language that will be disabled
    -- disable = { "c", "rust" },
    disable = { "dukkha", "anicca" },

    -- Setting this to true will run `:h syntax` and tree-sitter at the same time.
    -- Set this to `true` if you depend on 'syntax' being enabled (like for indentation).
    -- Using this option may slow down your editor, and you may see some duplicate highlights.
    -- Instead of true it can also be a list of languages
    -- additional_vim_regex_highlighting = false,

	  -- setting it to 'false' caused indentation problems with python, so let it be true
    additional_vim_regex_highlighting = true,
  },
}

-- UFO folding: kevinhwang91/nvim-ufo  
-- Can work on Termux too, use 'za' to toggle between



--capabilities.textDocument.foldingRange = {
--    dynamicRegistration = false,
--    lineFoldingOnly = true
--}
--vim.wo.foldcolumn = '1'
--vim.wo.foldlevel = 99 -- feel free to decrease the value
--vim.wo.foldenable = true
--
--require('ufo').setup()

-- Surround around ysa 
require('nvim-surround').setup()


-- Dracula theme https://github.com/Mofiqul/dracula.nvim
-- customize dracula color palette
vim.g.dracula_colors = {
  bg = "#282A36",
  fg = "#F8F8F2",
  selection = "#44475A",
  comment = "#6272A4",
  red = "#FF5555",
  orange = "#FFB86C",
  yellow = "#F1FA8C",
  green = "#50fa7b",
  purple = "#BD93F9",
  cyan = "#8BE9FD",
  pink = "#FF79C6",
  bright_red = "#FF6E6E",
  bright_green = "#69FF94",
  bright_yellow = "#FFFFA5",
  bright_blue = "#D6ACFF",
  bright_magenta = "#FF92DF",
  bright_cyan = "#A4FFFF",
  bright_white = "#FFFFFF",
  menu = "#21222C",
  visual = "#3E4452",
  gutter_fg = "#4B5263",
  nontext = "#3B4048",
}
-- show the '~' characters after the end of buffers
vim.g.dracula_show_end_of_buffer = true
-- use transparent background
vim.g.dracula_transparent_bg = true
-- set custom lualine background color
vim.g.dracula_lualine_bg_color = "#44475a"
-- set italic comment
vim.g.dracula_italic_comment = true






EOF















" " English word popup suggestion
" " -------- modified https://stackoverflow.com/a/41432390
" set dictionary+=~/.config/dictionary/british-english-large

" set completeopt+=noinsert
" set cmdheight=2
" " call SuperTabSetDefaultCompletionType("<c-x><c-n>")
" " NeoCompleteDisable

" augroup Main
" autocmd!
" autocmd InsertCharPre * call <SID>PopUpDict()
" augroup END

" let s:count=0
" function! s:PopUpDict()
"     let AsciiCode=char2nr(v:char)
"     if (AsciiCode <=# 122 && AsciiCode >=# 97) || (AsciiCode <=# 90 && AsciiCode >=# 65)  
"         let s:count+=1
"         if s:count >=# 3
"         call feedkeys("\<c-x>\<c-k>")   
"         endif
"     else
"         let s:count=0
"     endif
" endfunction
" " -------- https://stackoverflow.com/a/41432390

