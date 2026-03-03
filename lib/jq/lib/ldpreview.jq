import "lib/colorscheme" as scm;

def preview:
{ name: "svg",
  props: {
    xmlns: "http://www.w3.org/2000/svg",
    width: "680",
    height: "92",
    fill: "none"
  },
  nodes: [
    { name: "g",
      props: {
        transform: "scale(1 1)",
      },
      nodes: [
        { name: "rect",
          props: {
            width: "680", height: "92",
            class: "frame fill",
            fill: scm::light(.theme.colors.frame)
          }
        },
        { name: "rect",
          props: {
            class: "toolbar fill",
            fill: scm::light(.theme.colors.toolbar),
            width: "680", height: "48", y: "44"
          }
        },
        { name: "rect",
          props: {
            id: "svg-selected-tab",
            class: "tab_selected toolbar fill",
            fill: scm::light(.theme.colors.tab_selected // .theme.colors.toolbar),
            width: "166", height: "34",
            x: "28", y: "5", rx: "4",
            stroke_width: "1.5"
          }
        },
        { name: "rect",
          props: {
            class: "tab_line stroke",
            stroke: scm::light(.theme.colors.tab_line // .theme.colors.icons_attention),
            width: "166", height: "34",
            x: "28", y: "5", rx: "4",
            stroke_width: "1.5"
          }
        },
        { name: "rect",
          props: {
            class: "bookmark_text fill",
            fill: scm::light(.theme.colors.toolbar_text // .theme.colors.tab_background_text),
            width: "121", height: "4",
            x: "51", y: "20", rx: "2"
          }
        },
        { name: "rect",
          props: {
            class: "tab_background_text fill",
            fill: scm::light(.theme.colors.tab_background_text),
            width: "121", height: "4",
            x: "221", y: "20", rx: "2"
          }
        },
        { name: "rect",
          props: {
            id: "svg-url-field",
            class: "toolbar_field fill",
            fill: scm::light(.theme.colors.toolbar_field),
            width: "488", height: "32",
            x: "114", y: "52", rx: "4"
          }
        },
        { name: "rect",
          props: {
            id: "svg-url-field-text",
            class: "toolbar_field_text fill",
            fill: scm::light(.theme.colors.toolbar_field_text),
            width: "308", height: "4",
            x: "146", y: "66", rx: "2.2"
          }
        },
        { name: "circle",
          props: {
            class: "toolbar_field_text stroke",
            stroke: scm::light(.theme.colors.toolbar_field_text),
            cx: "130", cy: "68", r: "6.25", stroke_width: "1.5"
          }
        },
        { name: "circle",
          props: {
            class: "bookmark_text stroke",
            stroke: scm::light(.theme.colors.bookmark_text // .theme.colors.tab_background_text),
            cx: "24", cy: "68", r: "6.25", stroke_width: "1.5"
          }
        },
        { name: "circle",
          props: {
            class: "bookmark_text stroke",
            stroke: scm::light(.theme.colors.bookmark_text // .theme.colors.tab_background_text),
            cx: "60", cy: "68", r: "6.25", stroke_width: "1.5"
          }
        },
        { name: "g",
          props: {
            transform: "translate(649 61)",
            class: "bookmark_text fill",
            fill: scm::light(.theme.colors.bookmark_text // .theme.colors.tab_background_text)
          },
          nodes: [
            { name: "rect",
              props: { width: "14", height: "1.5", rx: "1.333" }
            },
            { name: "rect",
              props: { width: "14", height: "1.5", rx: "1.333", y: "6" }
            },
            { name: "rect",
              props: { width: "14", height: "1.5", rx: "1.333", y: "12" }
            }
          ]
        },
        { name: "mask",
          props: {
            id: "mask0",
            mask_type: "alpha",
            maskUnits: "userSpaceOnUse",
            x: "0", y: "0", width: "680", height: "92"
          },
          nodes: [
            { name: "path",
              props: {
                d: [
                  "M680", "92V0H334C321.85", 0, 312, "9.84974", 312, 22, 312,
                  "34.1503", "302.15", 44, 290, "44H252C238.745", 44, 228,
                  "54.7452", 228, 68, 228, "81.2548", "217.255", 92, 204, "92H680Z"
                ],
                fill: "#ffffff"
              }
            }
          ]
        },
        { name: "g",
          props: { mask: "url(#mask0)" },
          nodes: [
            { name: "rect",
              props: {
                width: "680", height: "92", fill: scm::dark(.theme.colors.frame)
              }
            },
            { name: "rect",
              props: { width: "121", height: "4",  fill: scm::dark(.theme.colors.tab_background_text),
                               x: "221", y: "20", rx: "2" }
            },
            { name: "rect",
              props: {
                y: "44", width: "680", height: "48",
                fill: scm::dark( .theme.colors.toolbar // .theme.color.frame)
              }
            },
            { name: "g",
              props: {
                transform: "translate(649 61)",
                class: "bookmark_text fill",
                fill: scm::dark(.theme.colors.bookmark_text // .theme.colors.tab_background_text)
              },
              nodes: [
                { name: "rect",
                  props: { width: "14", height: "1.5", rx: "1.333" }
                },
                { name: "rect",
                  props: { width: "14", height: "1.5", rx: "1.333", y: "6" }
                },
                { name: "rect",
                  props: { width: "14", height: "1.5", rx: "1.333", y: "12" }
                }
              ]
            },
            { name: "rect",
              props: {
                x: "114", y: "52", width: "488", height: "32",
                rx: "4", fill: scm::dark(.theme.colors.toolbar_field)
              }
            },
            { name: "rect",
              props: {
                x: "146", y: "66", width: "308", height: "4",
                rx: "4", fill: scm::dark(.theme.colors.toolbar_field_text)
              }
            }
          ]
        }
      ]
    }
  ]
};
