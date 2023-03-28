require("catppuccin").setup({
    transparent_background=true,
})

function ApplyColors(color)
	color = color or "catppuccin"
	vim.cmd.colorscheme(color)
end

ApplyColors()
