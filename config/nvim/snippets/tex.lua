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
-- LaTeX snippets
---------------------
-- begin / end
ls.add_snippets("tex", {
    s("beg", fmt([[
        \begin{<>}
          <>
        \end{<>}]], 
        { i(1, "env"), i(0, "%content"), rep(1) }, 
        { delimiters = "<>" }
    )
    )
})
-- Figure
ls.add_snippets("tex", {
    s("fig", fmt([[
    \begin{figure}
      \centering
      \includegraphics[width=0.8\linewidth]{pdf/<>}
      \caption{
      \label{fig:}}
    \end{figure}]],
        { i(1, "%content")}, 
        { delimiters = "<>" }
    )
    )
})
-- texttt
ls.add_snippets("tex", {
    s("/tt", fmt([[
        \texttt{<>}]],
        { i(1, "%content")}, 
        { delimiters = "<>" }
    )
    )
}, {
        type = "autosnippets",
    })
-- italic text
ls.add_snippets("tex", {
    s("/it", fmt([[
        \textit{<>}]],
        { i(1, "%content")}, 
        { delimiters = "<>" }
    )
    )
}, {
        type = "autosnippets",
    })
-- bold text
ls.add_snippets("tex", {
    s("/bf", fmt([[
        \textbf{<>}]],
        { i(1, "%content")}, 
        { delimiters = "<>" }
    )
    )
}, {
        type = "autosnippets",
    })

ls.add_snippets("tex", {s({ trig = "/al", wordTrig = false}, t("\\alpha"))}, {type = "autosnippets"})
ls.add_snippets("tex", {s({ trig = "/be", wordTrig = false}, t("\\beta"))}, {type = "autosnippets"})
ls.add_snippets("tex", {s({ trig = "/nu", wordTrig = false}, t("\\nu"))}, {type = "autosnippets"})
ls.add_snippets("tex", {s({ trig = "/la", wordTrig = false}, t("\\lambda"))}, {type = "autosnippets"})
ls.add_snippets("tex", {s({ trig = "/mu", wordTrig = false}, t("$\\mu$m"))}, {type = "autosnippets"})
ls.add_snippets("tex", {s({ trig = "/ci", wordTrig = false}, t("^{\\circ}"))}, {type = "autosnippets"})

ls.add_snippets("tex", {s({ trig = "/sp", wordTrig = false}, 
    fmt([[^{<>}]], { i(1, "%content")}, {delimiters = "<>"}))}, {type = "autosnippets"})
ls.add_snippets("tex", {s({ trig = "/sb", wordTrig = false}, 
    fmt([[_{<>}]], { i(1, "%content")}, {delimiters = "<>"}))}, {type = "autosnippets"})


ls.add_snippets("tex", {s("mk", {t("$"), i(1), t("$")})}, {type = "autosnippets"})
ls.add_snippets("tex", {s({ trig = "mrm", wordTrig = false}, {t("\\mathrm{"), i(1), t("}")})}, {type = "autosnippets"})

