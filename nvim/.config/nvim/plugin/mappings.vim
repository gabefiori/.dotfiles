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
nnoremap <leader>gs <cmd>lua require('neogit').open()<cr>

" Find files using Telescope command-line sugar.
nnoremap <leader>ff <cmd>lua require('telescope.builtin').find_files()<cr>
nnoremap <leader>fg <cmd>lua require('telescope.builtin').live_grep()<cr>
nnoremap <leader>fh <cmd>lua require('telescope.builtin').help_tags()<cr>

" Harpon
nnoremap <C-p> <cmd>lua require('telescope.builtin').git_files()<CR>
nnoremap <C-m> <cmd>lua require('harpoon.mark').add_file()<CR>
nnoremap <C-h> <cmd>lua require('harpoon.ui').toggle_quick_menu()<CR>
nnoremap <C-j> <cmd>lua require('harpoon.ui').nav_file(1)<CR>
nnoremap <C-k> <cmd>lua require('harpoon.ui').nav_file(2)<CR>
nnoremap <C-l> <cmd>lua require('harpoon.ui').nav_file(3)<CR>
nnoremap <C-;> <cmd>lua require('harpoon.ui').nav_file(4)<CR>

" Trouble
nnoremap <leader>xx <cmd>TroubleToggle<cr>
nnoremap <leader>xw <cmd>TroubleToggle workspace_diagnostics<cr>
nnoremap <leader>xd <cmd>TroubleToggle document_diagnostics<cr>
nnoremap <leader>xq <cmd>TroubleToggle quickfix<cr>
nnoremap <leader>xl <cmd>TroubleToggle loclist<cr>
nnoremap gR <cmd>TroubleToggle lsp_references<cr>
