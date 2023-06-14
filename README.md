Cocoa press Docs

## Setup

```
pip install mkdocs (from insiders repo, see docs)
pip install mkdocs-redirects mkdocs-exclude-search mkdocs-redirects mkdocs-minify-plugin mkdocs-with-pdf mkdocs-include-markdown-plugin
```

Users interacting with the PDF Portion may also need to install weasyprint, and cairo for font rendering correctly.  This can be sluggish on Windows.

## Development with Live Preview

`mkdocs serve`

## Build Output

`mkdocs build`

## Setting Primary Menu Items

The primary menu appearance of an item should not have a trailing anchor ("#") like `SimpleProject.md`.  Other appearances should be denoted like `SimpleProject.md#`.  This shims mkdocs into forcing the correct layout.
