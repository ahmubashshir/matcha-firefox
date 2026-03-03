def toxml:
  .
  | .name as $tag
  | (.props // {}) as $attrs
  | (.nodes // []) as $children
  | "<\($tag)"
    + (
        $attrs
        | to_entries
        | map(.key   |= (split("_") | join("-")))
        | map(.value |= (
          if type == "array"
          then join(" ")
          else .
          end
        ))
        | map(" \(.key)=\"\(.value)\"")
        | join("")
      )
    + (
        if ($children | length) == 0 then
          "/>"
        else
          ">"
          + (
              $children
              | map(toxml)
              | join("")
            )
          + "</\($tag)>"
        end
      );

def xml:
	toxml | "<?xml version=\"1.0\"?>\(.)";
