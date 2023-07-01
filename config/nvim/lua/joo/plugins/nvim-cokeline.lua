-- import cokeline plugin safely
local setup, cokeline = pcall(require, "cokeline")
if not setup then
  return
end

-- configure cokeline
cokeline.setup()

