-- Applies color scheme on load
function ApplyColorScheme(color)
    color = color or "material"

    -- Conditionally sets the theme style if scheme is material
    if color == "material" then
        vim.g.material_style = "darker"

        require(color).setup({
            styles = {
                comments = { italic = true }
            }
        })
    end

    vim.cmd.colorscheme(color)

end

ApplyColorScheme()
