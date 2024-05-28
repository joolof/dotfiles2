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
-- Python snippets
---------------------
-- import
ls.add_snippets("python", {
	s(
		"imp",
		t({
			"import numpy as np",
			"from astropy.io import fits, ascii",
			"import matplotlib.pyplot as plt",
			"# -----------------------------------------------------------",
			"",
			"",
		})
	),
})

-- colorbar
ls.add_snippets("python", {
	s(
		"cbar",
		t({
			"from mpl_toolkits.axes_grid1 import make_axes_locatable",
			"from mpl_toolkits.axes_grid1.inset_locator import inset_axes",
			"cbaxes = ax.inset_axes([0.1, 0.05, 0.8, 0.05])",
			"# cbaxes = inset_axes(ax1, width='80%', height='5%', loc=8)",
			"cb = plt.colorbar(cb, cax=cbaxes, orientation='horizontal')",
			"cb.ax.xaxis.set_ticks_position('top')",
			"cb.ax.xaxis.set_label_position('top')",
			"cb.ax.tick_params(labelsize=10, color = 'w', labelcolor='w', pad = 1.)",
			"",
		})
	),
})

-- Figure
ls.add_snippets("python", {
	s(
		"fig",
		fmt(
			[[
        fig = plt.figure(figsize=(7,6))
        ax1 = fig.add_axes([0.16, 0.14, 0.8, 0.79])
        # ax1.set_xscale("log", nonpositive='clip')
        # ax1.set_yscale("log", nonpositive='clip')
        ax1.plot(<>)
        ax1.set_xlim()
        ax1.set_ylim()
        # ax1.set_xlabel()
        # ax1.set_ylabel()
        plt.show()]],
			{ i(1, "%content") },
			{ delimiters = "<>" }
		)
	),
})

-- Imshow
ls.add_snippets("python", {
	s(
		"ims",
		fmt(
			[[
        fig = plt.figure(figsize=(7,6))
        ax1 = fig.add_axes([0.16, 0.14, 0.8, 0.79])
        cb = ax1.imshow(<>, origin = 'lower')
        ax1.set_xlim()
        ax1.set_ylim()
        # ax1.set_xlabel()
        # ax1.set_ylabel()
        plt.show()]],
			{ i(1, "%content") },
			{ delimiters = "<>" }
		)
	),
})

-- Class
ls.add_snippets("python", {
	s(
		"class",
		fmt(
			[[
        class <>():
            """
            docstring for <>1
            """
            def __init__(self):
                """

                """
                ]],
			{ i(1, "%content"), rep(1) },
			{ delimiters = "<>" }
		)
	),
})

-- Class function
ls.add_snippets("python", {
	s(
		"func",
		fmt(
			[[
        def <>(self):
            """

            """

            return 
            ]],
			{ i(1, "%content") },
			{ delimiters = "<>" }
		)
	),
})

-- logger
ls.add_snippets("python", {
	s(
		"logger",
		t({
			"import logging",
			"logger = logging.getLogger('joo')",
			"logger.setLevel(logging.INFO)",
			"handler = logging.StreamHandler()",
			"handler.setLevel(logging.INFO)",
			"formatter = logging.Formatter('[%(levelname)s] %(message)s')",
			"handler.setFormatter(formatter)",
			"logger.addHandler(handler)",
			"# -----------------------------------------------------------",
			"",
		})
	),
})
