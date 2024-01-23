-------------------------
-- Create snippets
-------------------------
local ls = require("luasnip")
local s = ls.snippet
local n = ls.snippet_node
local t = ls.text_node
local i = ls.insert_node
local f = ls.function_node
local c = ls.choice_node
local d = ls.dynamic_node
local events = require("luasnip.util.events")
local rep = require("luasnip.extras").rep
local fmt = require("luasnip.extras.fmt").fmt

---------------------
-- Neorg snippets
---------------------
ls.add_snippets("norg", {s({ trig = "b/c", wordTrig = false}, t("because"))}, {type = "autosnippets"})
ls.add_snippets("norg", {s({ trig = "w/o", wordTrig = false}, t("without"))}, {type = "autosnippets"})

