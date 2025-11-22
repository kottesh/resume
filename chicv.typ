#import "fontawesome.typ": *;

#let chiline() = {
    v(-11pt)
    line(length: 100%, stroke: 0.5pt)
}

#let iconlink(
    uri,
    label: [],
    icon: link-icon,
    size: none,
) = {
    if label == [] { label = uri }

    let content = [ #fa[#icon] #if label != none [#label] ]
    if size != none { content = text(size, content) }
    link(uri)[
        #box(
            stroke: 0.4pt + rgb("#00FFFF"),
            outset: (y: 2pt),
            inset: (x: 2pt),
            content
        )
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
    block(
        inset: (left: 0pt),
        tl
            + h(1fr)
            + tr
            + linebreak()
            + if bl != [] or br != [] {
                bl + h(1fr) + br + linebreak()
            }
            + content,
    )
}

#let chicv(body) = {
    let the-font = "New Computer Modern"

    set par(justify: true)
    show heading.where(level: 1): it => align(center, text(size: 20pt, font: the-font, weight: "medium", it))
    show heading.where(level: 2): it => text(size: 12pt, font: the-font, weight: "medium", block(
        smallcaps(it) + chiline(),
    ))
    set list(indent: 3pt)
    set text(size: 9.5pt, font: the-font)
    set page(margin: (x: 1cm, y: 0.6cm))
    set par(justify: true)

    body
}
