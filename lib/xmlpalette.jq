def ispreview:
	.key as $key
	| [
		"\\.toolbar(|_text)$",
		"\\.toolbar_field(|_text)$",
		"\\.tab_background_text$"
	]
	| map({key: ., value: $key})
	| map((.key as $k | .value | test($k)))
	| any
;

.
| (
	.dark_theme.colors as $dark
	| .theme.colors as $light
	| ($dark | with_entries(.key |= "dark.\(.)")) * ($light | with_entries(.key |= "light.\(.)"))
)
| to_entries
| map(select(ispreview))
| map("<color value=\"\(.value)\" name=\"\(.key)\"/>")
| join("\n  ")
| "<palette title=\"palette\">\n  \(.)\n</palette>"
