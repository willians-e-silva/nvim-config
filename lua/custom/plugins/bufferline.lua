return {
  'akinsho/bufferline.nvim',
  requires = 'kyazdani42/nvim-web-devicons',
  config = function()
    require('bufferline').setup {
      options = {
        diagnostics = 'nvim_lsp',
        custom_areas = {
          right = function()
            local result = {}
            local seve = vim.diagnostic.severity
            local error = #vim.diagnostic.get(0, { severity = seve.ERROR })
            local warning = #vim.diagnostic.get(0, { severity = seve.WARN })
            local info = #vim.diagnostic.get(0, { severity = seve.INFO })
            local hint = #vim.diagnostic.get(0, { severity = seve.HINT })

            if error ~= 0 then
              table.insert(result, { text = '  ' .. error, link = 'DiagnosticError' })
            end

            if warning ~= 0 then
              table.insert(result, { text = '  ' .. warning, link = 'DiagnosticWarn' })
            end

            if hint ~= 0 then
              table.insert(result, { text = '  ' .. hint, link = 'DiagnosticHint' })
            end

            if info ~= 0 then
              table.insert(result, { text = '  ' .. info, link = 'DiagnosticInfo' })
            end

            return result
          end,
        },
      },
    }

    -- 🎯 Atalhos principais do bufferline (parecidos com cokeline)
    local map = vim.keymap.set
    local opts = { noremap = true, silent = true }

    -- Navegar entre buffers
    map('n', '<Tab>', '<Cmd>BufferLineCycleNext<CR>', opts)
    map('n', '<S-Tab>', '<Cmd>BufferLineCyclePrev<CR>', opts)

    -- Reordenar buffers
    map('n', '<leader>bp', '<Cmd>BufferLineMovePrev<CR>', opts)
    map('n', '<leader>bn', '<Cmd>BufferLineMoveNext<CR>', opts)

    -- Fechar buffers
    map('n', '<leader>bc', '<Cmd>bdelete<CR>', opts)
    map('n', '<leader>bo', '<Cmd>BufferLineCloseOthers<CR>', opts)

    -- Escolher buffer pelo número (1–9)
    for i = 1, 9 do
      map('n', '<leader>' .. i, '<Cmd>BufferLineGoToBuffer ' .. i .. '<CR>', opts)
    end

    -- Modo "pick buffer" (escolher pela letra mostrada)
    map('n', '<leader>bb', '<Cmd>BufferLinePick<CR>', opts)
  end,
}
