-- import fterm plugin safely
local setup, fterm = pcall(require, "FTerm")
if not setup then
  return
end

-- enable comment
fterm.setup({
  border = 'double',
  dimensions  = {
      height = 0.8,
      width = 0.8,
  },
})


