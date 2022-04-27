local opts = {noremap = true, silent = true}
local keymap = vim.api.nvim_set_keymap

------ NORMAL -------
keymap("n", "<c-s>", ":w<CR>", {})
keymap("n", "<A-q>", ":q<CR>", {})
keymap("n", "<c-j>", "<c-w>j", opts)
keymap("n", "<c-h>", "<c-w>h", opts)
keymap("n", "<c-k>", "<c-w>k", opts)
keymap("n", "<c-l>", "<c-w>l", opts)
keymap("i", "<c-s>", "<Esc>:w<CR>", opts)
keymap("n", "<Space>f", ":Neoformat<CR>", opts)

---- TELESCOPE ----
keymap("n","<leader>f", "<cmd>Telescope find_files<cr>", opts)
keymap("n","<leader>l", "<cmd>Telescope live_grep<cr>", opts)
keymap("n","<leader>b", "<cmd>Telescope buffers<cr>", opts)
keymap("n","<leader>h", "<cmd>Telescope help_tags<cr>", opts)

------ LSP -------
local function nkeymap(key,map)
  keymap('n', key, map, opts)
end

nkeymap('gd', ':lua vim.lsp.buf.definition()<cr>')
nkeymap('gD', ':lua vim.lsp.buf.declaration()<cr>')
nkeymap('gi', ':lua vim.lsp.buf.implementation()<cr>')
nkeymap('gw', ':lua vim.lsp.buf.document_symbol()<cr>')
nkeymap('gw', ':lua vim.lsp.buf.workspace_symbol()<cr>')
nkeymap('gr', ':lua vim.lsp.buf.references()<cr>')
nkeymap('gt', ':lua vim.lsp.buf.type_definition()<cr>')
nkeymap('K', ':lua vim.lsp.buf.hover()<cr>')
nkeymap('<c-k>', ':lua vim.lsp.buf.signature_help()<cr>')
nkeymap('<leader>af', ':lua vim.lsp.buf.code_action()<cr>')
nkeymap('<leader>r', ':lua vim.lsp.buf.rename()<cr>')

---- Barbar -------
-- Move to previous/next
keymap('n', '<A-[>', ':BufferPrevious<CR>', opts)
keymap('n', '<A-]>', ':BufferNext<CR>', opts)
-- Re-order to previous/next
keymap('n', '<A-<>', ':BufferMovePrevious<CR>', opts)
keymap('n', '<A->>', ' :BufferMoveNext<CR>', opts)
-- Goto buffer in position...
keymap('n', '<A-1>', ':BufferGoto 1<CR>', opts)
keymap('n', '<A-2>', ':BufferGoto 2<CR>', opts)
keymap('n', '<A-3>', ':BufferGoto 3<CR>', opts)
keymap('n', '<A-4>', ':BufferGoto 4<CR>', opts)
keymap('n', '<A-5>', ':BufferGoto 5<CR>', opts)
keymap('n', '<A-6>', ':BufferGoto 6<CR>', opts)
keymap('n', '<A-7>', ':BufferGoto 7<CR>', opts)
keymap('n', '<A-8>', ':BufferGoto 8<CR>', opts)
keymap('n', '<A-9>', ':BufferGoto 9<CR>', opts)
keymap('n', '<A-0>', ':BufferLast<CR>', opts)
-- Close buffer
keymap('n', '<A-c>', ':BufferClose<CR>', opts)
-- Wipeout buffer
--                 :BufferWipeout<CR>
-- Close commands
--                 :BufferCloseAllButCurrent<CR>
--                 :BufferCloseBuffersLeft<CR>
--                 :BufferCloseBuffersRight<CR>
-- Magic buffer-picking mode
keymap('n', '<C-p>', ':BufferPick<CR>', opts)
-- Sort automatically by...
keymap('n', '<Space>bb', ':BufferOrderByBufferNumber<CR>', opts)
keymap('n', '<Space>bd', ':BufferOrderByDirectory<CR>', opts)
keymap('n', '<Space>bl', ':BufferOrderByLanguage<CR>', opts)
-- Other:
-- :BarbarEnable - enables barbar (enabled by default)
-- :BarbarDisable - very bad command, should never be used
-- this function is not function

-------- FLUTTER ---------
keymap('n', '<A-R>', ':FlutterRun<CR>', opts)
keymap('n', '<A-w>', ':FlutterOutlineOpen<CR>', {})

local function niko()
	print 'niko ardia'
end

niko()
