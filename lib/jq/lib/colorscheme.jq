def split_light_dark:
  . as $s
  | ($s | sub("^light-dark\\("; "") | sub("\\)$"; "")) as $inner
  | reduce range(0; ($inner|length)) as $i
      ({depth: 0, split: null};
       if .split != null then .
       else
         ($inner[$i:$i+1]) as $ch
         | if $ch == "(" then .depth += 1
           elif $ch == ")" then .depth -= 1
           elif $ch == "," and .depth == 0 then .split = $i
           else .
           end
       end
      )
  | . as $state
  | if $state.split == null then {light: $s, dark: $s}
    else {
      light: ($inner[0:$state.split] | gsub("^\\s+|\\s+$"; "")),
      dark:  ($inner[$state.split+1:] | gsub("^\\s+|\\s+$"; ""))
    }
    end
;

def color(str):
	str
	| if startswith("light-dark(")
	then split_light_dark
	else {light: ., dark: .}
	end;

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

def _ds2ld:
	.
	| .theme.colors *= (
		.dark_theme.colors as $dark
		| .theme.colors
		| with_entries(.key as $key | .value |= (
			if ($dark | has($key)) and (. != $dark[$key])
			then "light-dark(\(.), \($dark[$key]))"
			else .
			end
		))
	)
	| delpaths([["dark_theme"]])
;

def _onlydark:
	if ((has("theme")|not) and has("dark_theme"))
	then (.theme = .dark_theme)|delpaths([["dark_theme"]])
	else .
	end
;

def tolightdark:
	_onlydark
	| if dualscheme
	then _ds2ld
	else .
	end
;
