-- Install packer.nvim if not installed
local install_path = vim.fn.stdpath 'data' .. '/site/pack/packer/start/packer.nvim'
local first_install = false
if vim.fn.empty(vim.fn.glob(install_path)) > 0 then
    first_install = true
    vim.fn.system { 'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim', install_path }
    vim.cmd [[packadd packer.nvim]]
end

require("sri")
