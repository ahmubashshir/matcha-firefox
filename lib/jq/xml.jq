def toxml:
  to_entries[]
  | .key as $tag
  | .value as $val
  | ($val.props // {}) as $attrs
  | ($val.nodes // []) as $children
  | "<\($tag)"
    + (
        $attrs
        | to_entries
        | map(" \(.key | split("_") | join("-"))=\"\(.value)\"")
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
