-- -- import which-key plugin safely
-- local status, whichkey = pcall(require, "which-key")
-- if not status then
--   return
-- end
-- 
-- -- configure which-key with modified theme
-- whichkey.setup{
-- })
--
require("which-key").setup{
    plugins = {
        marks = false,
        spelling = {
            enabled = true,
            suggestions = 20,
        },
        presets = {
            operators = false,
            motions = false,
            windwows = false,
            nav = false,
            z = true,
            g = false
        },
    },
    window = {
        border = "single"
    },
}
