local status, telescope = pcall(require, "telescope")
if not status then
  vim.notify("can't find telescope")
  return
end
telescope.load_extension('ui-select')
