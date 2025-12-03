# Typst documentation

These files produce a slide deck using Typst with the diatypst preview template ([Documentation]("https://typst.app/universe/package/diatypst")). Main entry: presentation/slides.typ

Prerequisites
- Typst CLI installed (mac): brew install typst OR follow https://typst.app/docs/getting-started
- Network access on first build to fetch the remote template: `#import "@preview/diatypst:0.8.0": *`

Quick build / preview (Mac terminal)
- Compile to PDF:
  `typst compile presentation/slides.typ presentation/slides.pdf`
- Live watch (auto-rebuild on changes):
  `typst watch presentation/slides.typ`
- Open the generated PDF with Preview:
  `open presentation/slides.pdf`

Key files
- presentation/slides.typ — deck source (imports template and sets metadata)
- presentation/ (any local assets like images or custom styles)

How the slides are structured
- Top-level slide: `= Title`
- Sub-slide / section: `== Subtitle`
- Filler/example text uses `#lorem(n)`
- Template configured via the `#show: slides.with(...)` call at the top of slides.typ