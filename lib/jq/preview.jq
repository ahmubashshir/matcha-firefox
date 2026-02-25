import "xml" as xml;

{
  svg: {
    props: {
      xmlns: "http://www.w3.org/2000/svg",
      width: "680",
      height: "92",
      fill: "none"
    },
    nodes: [
      {
        rect: {
          props: {
            width: "680",
            height: "92",
            fill: .theme.colors.frame
          }
        }
      },
      {
        g: {
          props: {
            filter: "url(#filter0_dd)"
          },
          nodes: [
            {
              rect: {
                props: {
                  x: "28",
                  y: "5",
                  width: "166",
                  height: "34",
                  rx: "4",
                  fill: .theme.colors.toolbar
                }
              }
            }
          ]
        }
      },
      {
        rect: {
          props: {
            x: "51",
            y: "20",
            width: "121",
            height: "4",
            rx: "2",
            fill: .theme.colors.toolbar_text
          }
        }
      },
      {
        rect: {
          props: {
            x: "221",
            y: "20",
            width: "121",
            height: "4",
            rx: "2",
            fill: .theme.colors.toolbar_text
          }
        }
      },
      {
        rect: {
          props: {
            y: "44",
            width: "680",
            height: "48",
            fill: .theme.colors.toolbar
          }
        }
      },
      {
        circle: {
          props: {
            cx: "24",
            cy: "68",
            r: "6.25",
            stroke: .theme.colors.toolbar_text,
            stroke_width: "1.5"
          }
        }
      },
      {
        circle: {
          props: {
            cx: "60",
            cy: "68",
            r: "6.25",
            stroke: .theme.colors.toolbar_text,
            stroke_width: "1.5"
          }
        }
      },
      {
        rect: {
          props: {
            x: "114",
            y: "52",
            width: "488",
            height: "32",
            rx: "4",
            fill: .theme.colors.toolbar_field
          }
        }
      },
      {
        circle: {
          props: {
            cx: "130",
            cy: "68",
            r: "6.25",
            stroke: .theme.colors.toolbar_field_text,
            stroke_width: "1.5"
          }
        }
      },
      {
        rect: {
          props: {
            x: "146",
            y: "66",
            width: "308",
            height: "4",
            rx: "2",
            fill: .theme.colors.toolbar_field_text
          }
        }
      },
      {
        mask: {
          props: {
            id: "mask0",
            mask_type: "alpha",
            maskUnits: "userSpaceOnUse",
            x: "0",
            y: "0",
            width: "680",
            height: "92"
          },
          nodes: [
            {
              path: {
                props: {
                  d: "M680 92V0H334C321.85 0 312 9.84974 312 22 312 34.1503 302.15 44 290 44H252C238.745 44 228 54.7452 228 68 228 81.2548 217.255 92 204 92H680Z",
                  fill: .theme.colors.toolbar
                }
              }
            }
          ]
        }
      },
      {
        g: {
          props: {
            mask: "url(#mask0)"
          },
          nodes: [
            {
              rect: {
                props: {
                  width: "680",
                  height: "92",
                  fill: .dark_theme.colors.frame
                }
              }
            },
            {
              rect: {
                props: {
                  x: "221",
                  y: "20",
                  width: "121",
                  height: "4",
                  rx: "2",
                  fill: .dark_theme.colors.tab_background_text
                }
              }
            },
            {
              rect: {
                props: {
                  y: "44",
                  width: "680",
                  height: "48",
                  fill: .dark_theme.colors.toolbar
                }
              }
            },
            {
              line: {
                props: {
                  x1: "663",
                  y1: "73.75",
                  x2: "649",
                  y2: "73.75",
                  stroke: .dark_theme.colors.toolbar_text,
                  stroke_width: "1.5"
                }
              }
            },
            {
              line: {
                props: {
                  x1: "663",
                  y1: "67.75",
                  x2: "649",
                  y2: "67.75",
                  stroke: .dark_theme.colors.toolbar_text,
                  stroke_width: "1.5"
                }
              }
            },
            {
              line: {
                props: {
                  x1: "663",
                  y1: "61.75",
                  x2: "649",
                  y2: "61.75",
                  stroke: .dark_theme.colors.toolbar_text,
                  stroke_width: "1.5"
                }
              }
            },
            {
              rect: {
                props: {
                  x: "114",
                  y: "52",
                  width: "488",
                  height: "32",
                  rx: "4",
                  fill: .dark_theme.colors.toolbar_field
                }
              }
            },
            {
              rect: {
                props: {
                  x: "146",
                  y: "66",
                  width: "308",
                  height: "4",
                  rx: "2",
                  fill: .dark_theme.colors.toolbar_field_text
                }
              }
            }
          ]
        }
      },
      {
        defs: {
          nodes: [
            {
              filter: {
                props: {
                  id: "filter0_dd",
                  x: "24",
                  y: "1",
                  width: "174",
                  height: "42",
                  filterUnits: "userSpaceOnUse",
                  color_interpolation_filters: "sRGB"
                },
                nodes: [
                  { feFlood: { props: { flood_opacity: "0", result: "BackgroundImageFix" } } },
                  { feColorMatrix: { props: { in: "SourceAlpha", type: "matrix", values: "0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 127 0" } } },
                  { feOffset: { props: {} } },
                  { feGaussianBlur: { props: { stdDeviation: "2" } } },
                  { feColorMatrix: { props: { type: "matrix", values: "0 0 0 0 0.501961 0 0 0 0 0.501961 0 0 0 0 0.556863 0 0 0 0.5 0" } } },
                  { feBlend: { props: { mode: "normal", in2: "BackgroundImageFix", result: "effect1_dropShadow" } } },
                  { feColorMatrix: { props: { in: "SourceAlpha", type: "matrix", values: "0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 127 0" } } },
                  { feOffset: { props: {} } },
                  { feGaussianBlur: { props: { stdDeviation: "0.5" } } },
                  { feColorMatrix: { props: { type: "matrix", values: "0 0 0 0 0.501961 0 0 0 0 0.501961 0 0 0 0 0.556863 0 0 0 0.9 0" } } },
                  { feBlend: { props: { mode: "normal", in2: "effect1_dropShadow", result: "effect2_dropShadow" } } },
                  { feBlend: { props: { mode: "normal", in: "SourceGraphic", in2: "effect2_dropShadow", result: "shape" } } }
                ]
              }
            }
          ]
        }
      }
    ]
  }
} | xml::toxml
