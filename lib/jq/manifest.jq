.
| .theme.colors *= (
	.dark_theme.colors as $dark
	| .theme.colors
	| with_entries(.key as $key | .value |= "light-dark(\(.), \($dark[$key]))")
)
| .icons = {
	"32": .icons
}
| delpaths([["dark_theme"]])
