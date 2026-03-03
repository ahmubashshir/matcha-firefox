import "lib/colorscheme" as scm;

scm::tolightdark
| if .icons != null
then .icons = {
	"32": .icons
} end
