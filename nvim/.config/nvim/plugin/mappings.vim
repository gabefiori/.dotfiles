" File explorer
nnoremap <C-n> :Explore<CR>

" Delete buffer
nnoremap <leader>k :bd<CR>

" Copy to clipboard
nnoremap <leader>y "+y
vnoremap <leader>y "+y
nnoremap <leader>Y gg"+yG

" Split screen
nnoremap <Leader>w <C-w>
nmap <C-h> <C-w>h
nmap <C-j> <C-w>j
nmap <C-k> <C-w>k
nmap <C-l> <C-w>l

" Undo breakpoints
inoremap , ,<c-g>u
inoremap . .<c-g>u
inoremap ! !<c-g>u
inoremap ? ?<c-g>u

" Git
nnoremap <leader>gc <cmd>Telescope git_commits<cr>

" Find files using Telescope command-line sugar.
nnoremap <leader>ff <cmd>lua require('telescope.builtin').find_files()<cr>
nnoremap <leader>fg <cmd>lua require('telescope.builtin').live_grep()<cr>
nnoremap <leader>fh <cmd>lua require('telescope.builtin').help_tags()<cr>
nnoremap <C-p> <cmd>lua require('telescope.builtin').git_files()<CR>
nnoremap <C-b> <cmd>lua require('telescope.builtin').buffers()<CR>
nnoremap <leader>fd <cmd>lua require('gfmonego.telescope').search_dotfiles()<cr>

" Autocompletion
" Use <Tab> and <S-Tab> to navigate through popup menu
inoremap <expr> <Tab>   pumvisible() ? "\<C-n>" : "\<Tab>"
inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"
