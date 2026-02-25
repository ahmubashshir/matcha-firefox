import "xml" as xml;

{ svg: {
    props: {
      width: "63",
      height: "63",
      viewBox: "0 0 63 63",
      fill: "none",
      xmlns: "http://www.w3.org/2000/svg"
    },
    nodes: [
      { path: {
          props: {
            d: "M53.8717 54C66.0976 41.5959 66.0425 21.6295 53.7065 9.29348 41.3705-3.04253 21.4041-3.09758 9 9.12833L53.8717 54Z",
            fill: .dark_theme.colors.toolbar_field
          }
        }
      },
      { path: {
          props: {
            d: "M9.12833 9C-3.09758 21.4041-3.04253 41.3705 9.29348 53.7065 21.6295 66.0425 41.5959 66.0976 54 53.8717L9.12833 9Z",
            fill: .theme.colors.toolbar_field
          }
        }
      }
    ]
  }
} | xml::toxml
