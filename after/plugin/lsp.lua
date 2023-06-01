local lsp = require('lsp-zero')

lsp.preset('recommended')

lsp.ensure_installed({
    'lua_ls',
    'tsserver',
    'eslint',
    'rust_analyzer',
})

-- Fix Undefined global 'vim'
lsp.nvim_workspace()

local cmp = require('cmp')

local cmp_select = {behavior = cmp.SelectBehavior.Select}

local cmp_mappings = lsp.defaults.cmp_mappings({
  ['<C-p>'] = cmp.mapping.select_prev_item(cmp_select),
  ['<C-n>'] = cmp.mapping.select_next_item(cmp_select),
  ['<C-y>'] = cmp.mapping.confirm({ select = true }),
  ["<C-Space>"] = cmp.mapping.complete(),
})

cmp_mappings['<Tab>'] = nil
cmp_mappings['<S-Tab>'] = nil

lsp.setup_nvim_cmp({
  mapping = cmp_mappings
})

lsp.set_preferences({
    suggest_lsp_servers = true,
    sign_icons = {
        error = 'E',
        warn = 'W',
        hint = 'H',
        info = 'I'
    }
})

lsp.on_attach(function(client, bufnr)
    local opts = { buffer = bufnr, remap = false }
    if client.name == "eslint" then
        vim.cmd.LspStop('eslint')
        return
    end
    -- Press "gd" in normal mode to go to definition
    vim.keymap.set("n", "gd", vim.lsp.buf.definition, opts)
    -- Press "K" in normal mode to dispay information on the object
    vim.keymap.set("n", "K", vim.lsp.buf.hover, opts)
    vim.keymap.set("n", "<leader>vws", vim.lsp.buf.workspace_symbol, opts)
    -- Press "<space>vd" in normal mode to dispay error and warning 
    -- diagnostics
    vim.keymap.set("n", "<leader>vd", vim.diagnostic.open_float, opts)
    -- Press "]d" in normal mode to goto next warning or error
    vim.keymap.set("n", "]d", vim.diagnostic.goto_next, opts)
    -- Press "[d" in normal mode to goto next warning or error
    vim.keymap.set("n", "[d", vim.diagnostic.goto_prev, opts)
    -- Press "<space>vca" in normal mode to dispay code actions for
    -- warning or error
    vim.keymap.set("n", "<leader>vca", vim.lsp.buf.code_action, opts)
    -- Press "<space>vrr" in normal mode to dispay all references for
    -- selected object
    vim.keymap.set("n", "<leader>vrr", vim.lsp.buf.references, opts)
    -- Press "<space>vrn" in normal mode to rename all references for
    -- selected object
    vim.keymap.set("n", "<leader>vrn", vim.lsp.buf.rename, opts)
    vim.keymap.set("i", "<C-h>", vim.lsp.buf.signature_help, opts)
    -- Apply code formatting for the current buffer
    vim.keymap.set("n", "<leader>ft", "<cmd>LspZeroFormat<CR>") 
end)

lsp.setup()

vim.diagnostic.config({
    virtual_text = true
})