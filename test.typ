#import "fontawesome.typ": github;

#box(stroke: 0.4pt + blue, inset: 3pt)[#move(dx: -1.2pt)[#text(90pt, github)]]

#box(stroke: 1pt + blue, inset: 10pt)[
  #align(center)[#text(50pt, "github" + github)]
]
#box(stroke: 1pt + blue, inset: 10pt)[
  #block(align(center)[#text(50pt, github)])
]

#let icons = text(50pt, github)

#align(center)[
  #box(stroke: 1pt + blue, inset: 10pt)[#icons]
]

#align(center)[
  #box(
    stroke: 1pt + blue,
    width: 80pt,
    height: 80pt,
  )[
    #place(center + horizon)[
      #text(50pt)[#github]
    ]
  ]
]
#align(center)[
  #box(
    stroke: 1pt + blue,
    inset: 10pt,
    width: 70pt,
    height: 70pt,
  )[
    #align(center + horizon)[
      #text(50pt)[#github]
    ]
  ]
]

#let icons = text(50pt, github)
#align(center)[
  #box(stroke: 1pt + blue, inset: 10pt)[
    #align(center + horizon)[#icons]
  ]
]

#align(center)[
  #box(stroke: 1pt + blue, inset: 10pt)[
    #move(dy: -2pt)[#text(50pt)[#github]]
  ]
]

#let centered-icon(icon, size: 50pt, padding: 10pt) = {
  box(
    stroke: 1pt + blue,
    inset: padding,
    width: size + 2 * padding,
    height: size + 2 * padding,
  )[
    #align(center + horizon)[
      #text(size)[#icon]
    ]
  ]
}

// Usage:
#align(center)[
  #centered-icon(github, size: 30pt)
]

#align(center)[
  #centered-icon(github, size: 50pt)
]

#align(center)[
  #centered-icon(github, size: 80pt)
]