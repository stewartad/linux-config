require("catppuccin").setup({
    transparent_background=true,
})

function ApplyColors(color)
	color = color or "hardhacker"
	vim.cmd.colorscheme(color)
end

ApplyColors()
