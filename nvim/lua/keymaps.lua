local opts = { noremap = true, silent = true}
-- Shorten function name
local keymap = vim.api.nvim_set_keymap

keymap("i", "jj", "<esc>", opts)
vim.keymap.set('n', '<leader>xx', ':%!xxd<CR>', {})
vim.keymap.set('n', '<leader>xr', ':%!xxd -r<CR> :w<CR>', {})
vim.cmd('abbr cjam #include <stdio.h><CR>#include <stdlib.h><CR><CR>int main(int argc, char* argv[]) {<CR>int i,j,k,N;<CR>scanf("%d", &N);<CR><CR>return 0;<CR>}')
