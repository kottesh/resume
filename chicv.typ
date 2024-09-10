#let chiline() = {
  v(-3pt);
  line(length: 100%, stroke: gray);
  v(-10pt)
}

#import "fontawesome.typ": *;
#let iconlink(
  uri, text: [], icon: link-icon) = {
  if text == [] {
    text = uri
  }
  link(uri)[#fa[#icon]~#text]
}

#let githublink(userRepo) = {
  link("https://github.com/" + userRepo)[#text(rgb("#0000FF"))[#fa[#arrow-up-right]]~#userRepo]
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

#let cventry(
  tl: lorem(2),
  tr: "1145/14 - 1919/8/10",
  bl: [],
  br: [],
  content
) = {
  block(
    inset: (left: 0pt),
    tl + h(1fr) + tr +
    linebreak() +
    if bl != [] or br != [] {
      bl + h(1fr) + br + linebreak()
    } +
    content
  )
}

#let chicv(body) = {
  set par(justify: true)

  show heading.where(
    level: 1
  ): set text(
    size: 22pt,
    weight: "light",
  )

  let the-font = (
    "Palatino Linotype",
  )
  show heading.where(
    level: 2
  ): it => text(
    size: 14pt,
    font: the-font,
    weight: "bold",
    block(
      chiline() + it,
    )
  )
  set list(indent: 0pt)
  set text(
    size: 10pt,
    font: the-font
  )

  show link: it => underline(offset: 2pt, it)
  set page(
   margin: (x: 0.5cm, y: 1.5cm)
  )
  set par(justify: true)

  body
}
