set relativenumber
set nu rnu
set tabstop=4
set mouse=a
set hidden
set shiftwidth=4
set ma 
syntax on 
set nohlsearch 
set laststatus=2
set clipboard=unnamedplus
call plug#begin()
Plug 'Pocco81/AutoSave.nvim'
Plug 'preservim/nerdcommenter'
Plug 'jiangmiao/auto-pairs' 
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'brooth/far.vim'
Plug 'https://github.com/morhetz/gruvbox'
Plug 'zacanger/angr.vim'
" Plug 'vim-airline/vim-airline'
" Plug 'vim-airline/vim-airline-themes'
call plug#end()
let g:gruvbox_contrast_dark = 'hard'
colorscheme gruvbox

nnoremap <leader>ff <cmd>:Files<cr>
nnoremap <leader>fg <cmd>:Files ~<cr>
imap <C-c> <Esc>
let g:NERDSpaceDelims = 1
let g:NERDCompactSexyComs = 1
:set pumheight=20
nnoremap <silent> <C-f> :Farp <cr>
nnoremap <silent> <leader>fd :Fardo <cr>
nnoremap <silent><leader>d :call CocActionAsync('jumpDefinition','tab drop') <cr>
lua << EOF
local autosave = require("autosave")

autosave.setup(
    {
        enabled = true,
        events = {"InsertLeave", "TextChanged"},
        conditions = {
            exists = true,
            filename_is_not = {},
            filetype_is_not = {},
            modifiable = true
        },
        write_all_buffers = false,
        on_off_commands = true,
        clean_command_line_interval = 0,
        debounce_delay = 135
    }
)
EOF
