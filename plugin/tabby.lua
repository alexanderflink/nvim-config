local theme = {
	fill = "TabLineFill",
	-- Also you can do this: fill = { fg='#f2e9de', bg='#907aa9', style='italic' }
	head = { bg = "#282828" },
	current_tab = "TabLineSel",
	tab = { fg = "#7c6f64", bg = "#282828" },
	win = { fg = "#7c6f64", bg = "#282828" },
	tail = { bg = "#282828" },
}

require("tabby.tabline").set(function(line)
	return {
		line.tabs().foreach(function(tab)
			local hl = tab.is_current() and theme.current_tab or theme.tab
			return {
				line.sep("", hl, theme.fill),
				tab.is_current() and "" or "",
				tab.number(),
				tab.name(),
				line.sep("", hl, theme.fill),
				hl = hl,
				margin = " ",
			}
		end),
		line.spacer(),
		line.wins_in_tab(line.api.get_current_tab()).foreach(function(win)
			local hl = win.is_current() and theme.current_tab or theme.tab
			return {
				line.sep("", hl, theme.fill),
				win.is_current() and "" or "",
				win.buf_name(),
				line.sep("", hl, theme.fill),
				hl = hl,
				margin = " ",
			}
		end),
		hl = theme.fill,
	}
end)
