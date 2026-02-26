.
| .theme.colors *= (
	.dark_theme.colors as $dark
	| .theme.colors
	| with_entries(.key as $key | .value |= "light-dark(\(.), \($dark[$key]))")
)
| if .icons != null
then .icons = {
	"32": .icons
} end
| delpaths([["dark_theme"]])
