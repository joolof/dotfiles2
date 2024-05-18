require("code_runner").setup({
	-- put here the commands by filetype
	filetype = {
		java = "cd $dir && javac $fileName && java $fileNameWithoutExt",
		python = "python3 -u",
		tex = "latexmk -pdf",
		typescript = "deno run",
		rust = "cd $dir && rustc $fileName && $dir/$fileNameWithoutExt",
		markdown = "cd $dir && pandoc $fileName -o ~/Desktop/$fileNameWithoutExt.pdf --from markdown --template eisvogel --listings",
	},
	term = {
		size = 4,
	},
	float = {
		close_key = "q",
		border = "single",
	},
})
