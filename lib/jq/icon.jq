import "lib/xml" as xml;
import "lib/colorscheme" as scm;

scm::tolightdark
| { name: "svg",
    props: {
      width: "63",
      height: "63",
      viewBox: "0 0 63 63",
      fill: "none",
      xmlns: "http://www.w3.org/2000/svg"
    },
    nodes: (if scm::lightdark
      then [
        { name: "path",
          props: {
            d: [
              "M53.8717", "54C66.0976", "41.5959", "66.0425", "21.6295", "53.7065",
              "9.29348", "41.3705-3.04253", "21.4041-3.09758", 9, "9.12833L53.8717", "54Z"
            ],
            fill: scm::dark(.theme.colors.toolbar_field)
          }
        },
        { name: "path",
          props: {
            d: [
              "M9.12833", "9C-3.09758", "21.4041-3.04253", "41.3705", "9.29348", "53.7065",
              "21.6295", "66.0425", "41.5959", "66.0976", 54, "53.8717L9.12833", "9Z"
            ],
            fill: scm::light(.theme.colors.toolbar_field)
          }
        }
      ] else [
        { name: "path",
          props: {
            d: [
              "M31.463", "0C23.407-.049", "15.337", "2.953", "9.13",
              "9.002h-.002l-.065.062q-.03.033-.062.065v.002C-3.095",
              "21.544-3", "41.414", "9.293", "53.707s32.163", "12.388",
              "44.576.291h.002l.127-.127v-.002C66.095", "41.456",
              66, "21.586", "53.707", "9.293", "47.56", "3.146",
              "39.519.049", "31.463", 0
            ],
            fill: .theme.colors.toolbar_field
          }
        }
      ] end)
  }
| xml::toxml

# vim: ts=2:et:
