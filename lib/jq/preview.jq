import "lib/xml" as xml;
import "lib/ldpreview" as lightdark;
import "lib/scpreview" as singlecol;
import "lib/colorscheme" as scm;

scm::tolightdark
| if scm::lightdark
then lightdark::preview
else singlecol::preview
end
| xml::toxml
