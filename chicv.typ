#import "@preview/use-tabler-icons:0.4.0"

#let chiline() = {
  v(-3pt);
  line(length: 100%, stroke: gray);
  v(-10pt)
}

#import "fontawesome.typ": *;
#let iconlink(uri, text: [], icon: link-icon) = {
  if text == [] {
    text = uri
  }
  link(uri)[#box(stroke: 0.2pt + rgb("#00FFFF"), inset: 3pt, baseline: 3pt)[#fa[#icon]~#text]]
}

#let githublink(userRepo) = {
  link("https://github.com/" + userRepo)[
    #box(outset: 3pt, stroke: 0.5pt + rgb("#00FFFF"))[#fa[#arrow-up-right]~#userRepo]
  ]
}

#let latex = {
  box(width: 2.55em, {
    [L]
    place(top, dx: 0.3em, text(size: 0.7em)[A])
    place(top, dx: 0.7em)[T]
    place(top, dx: 1.26em, dy: 0.22em)[E]
    place(top, dx: 1.8em)[X]
  })
}

#let cventry(tl: lorem(2), tr: "1145/14 - 1919/8/10", bl: [], br: [], content) = {
  block(inset: (left: 0pt), tl + h(1fr) + tr + linebreak() + if bl != [] or br != [] {
    bl + h(1fr) + br + linebreak()
  } + content)
}

#let link_t(link_val) = {
  link(link_val)[
    #box(inset: 1.5pt, stroke: + 0.5pt + rgb("#00FFFF"))[#fa(arrow-up-right)] 
  ]
}

#let chicv(body) = {
  set par(justify: true)
   
  show heading.where(level: 1): it => align(center, text(size: 22pt, weight: "light", it))
   
  let the-font = ("Palatino Linotype",)
  show heading.where(level: 2): it => text(size: 14pt, font: the-font, weight: "bold", block(chiline() + it))
  set list(indent: 0pt)
  set text(size: 10pt, font: the-font)
   
  //show link: it => underline(offset: 2pt, it)
   
  set page(margin: (x: 0.6cm, y: 0.8cm))
  set par(justify: true)
   
  body
}
