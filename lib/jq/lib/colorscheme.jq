def color(str):
	str
	| if startswith("light-dark")
	then capture("light-dark\\((?<light>.*?), (?<dark>.*?)\\)")
	else {light: ., dark: .}
	end
;

def light(str): color(str).light;
def dark(str):  color(str).dark;

def lightdark:
	.theme.colors
	| to_entries
	| map(.value | test("^light-dark"))
	| any
;

def dualscheme:
	[
		has("theme"),
		has("dark_theme"), (
		.theme
		| has("colors")
		), (
		.dark_theme
		| has("colors")
	)]
	| all
;

def ___ds2ld:
	.
	| .theme.colors *= (
		.dark_theme.colors as $dark
		| .theme.colors
		| with_entries(.key as $key | .value |= "light-dark(\(.), \($dark[$key]))")
	)
	| delpaths([["dark_theme"]])
;

def tolightdark:
	if dualscheme
	then ___ds2ld
	else .
	end
;
