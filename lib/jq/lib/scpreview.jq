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
      props: { transform: "scale(1 1)" },
      nodes: [
        { name: "rect",
          props: {
            width: "680",
            height: "92",
            class: "frame fill",
            fill: .theme.colors.frame
          }
        },
        { name: "rect",
          props: {
            class: "toolbar fill",
            fill: .theme.colors.toolbar,
            width: "680", height: "48", y: "44"
          }
        },
        { name: "rect",
          props: {
            id: "svg-selected-tab",
            class: "tab_selected toolbar fill",
            fill: .theme.colors.toolbar,
            width: "166", height: "34",
            x: "28", y: "5", rx: "4",
            stroke_width: "1.5"
          }
        },
        { name: "rect",
          props: {
            class: "tab_line stroke",
            stroke: "#23cdb3",
            width: "166", height: "34",
            x: "28", y: "5", rx: "4",
            stroke_width: "1.5"
          }
        },
        { name: "rect",
          props: {
            class: "bookmark_text fill",
            fill: (.theme.colors.toolbar_text // .theme.colors.tab_background_text),
            width: "121", height: "4",
            x: "51", y: "20", rx: "2"
          }
        },
        { name: "rect",
          props: {
            class: "tab_background_text fill",
            fill: .theme.colors.tab_background_text,
            width: "121", height: "4",
            x: "221", y: "20", rx: "2"
          }
        },
        { name: "rect",
          props: {
            id: "svg-url-field",
            class: "toolbar_field fill",
            fill: .theme.colors.toolbar_field,
            width: "488", height: "32",
            x: "114", y: "52", rx: "4"
          }
        },
        { name: "rect",
          props: {
            id: "svg-url-field-text",
            class: "toolbar_field_text fill",
            fill: .theme.colors.toolbar_field_text,
            width: "308", height: "4",
            x: "146", y: "66", rx: "2.2"
          }
        },
        {
          name: "circle",
          props: {
            class: "toolbar_field_text stroke",
            stroke: .theme.colors.toolbar_field_text,
            cx: "130", cy: "68", r: "6.25",
            stroke_width: "1.5"
          }
        },
        { name: "circle",
          props: {
            class: "bookmark_text stroke",
            stroke: (.theme.colors.bookmark_text // .theme.colors.tab_background_text),
            cx: "24", cy: "68", r: "6.25", stroke_width: "1.5"
          }
        },
        { name: "circle",
          props: {
            class: "bookmark_text stroke",
            stroke: (.theme.colors.bookmark_text // .theme.colors.tab_background_text),
            cx: "60", cy: "68", r: "6.25", stroke_width: "1.5"
          }
        },
        {
          name: "g",
          props: {
            transform: "translate(649 61)",
            class: "bookmark_text fill",
            fill: (.theme.colors.bookmark_text // .theme.colors.tab_background_text)
          },
          nodes: [
            { name: "rect", props: { width: "14", height: "1.5", rx: "1.333" } },
            { name: "rect", props: { width: "14", height: "1.5", rx: "1.333", y: "6" } },
            { name: "rect", props: { width: "14", height: "1.5", rx: "1.333", y: "12" } }
          ]
        }
      ]
    }
  ]
};
