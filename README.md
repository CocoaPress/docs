LightBurn Docs Private Repo

## Setup

```
pip install mkdocs (from insiders repo, see Lessonly)
pip install mkdocs-redirects mkdocs-exclude-search mkdocs-redirects mkdocs-minify-plugin mkdocs-with-pdf mkdocs-include-markdown-plugin
```

Users interacting with the PDF Portion may also need to install weasyprint, and cairo for font rendering correctly.  This can be sluggish on Windows.

## Development with Live Preview

`mkdocs serve`

## Build Output

`mkdocs build`

## How the PDF Portion Works

Using overrides in the `pdf` folder, and the build options shown in `docbuild.yml`, we first run the offline PDF create, run it through ghostscript to reduce the filesize by about 75%, since images are the _bulk_ of the content of the PDF, and then place it in the lecacy file output location.

## How the ZIP Portion Works

Copying the mkdocs.yml config file to include the date in the file title, we build the site with `offline` / `privacy` enabled, forcing it to localize all embedded content *except* for Google Fonts (since we use an unknown number of those.  The Developer was as of 9.7.2022 working on that for GDPR compliance.)  

Then we parse the mkdocs.yml config to find search exclusions, use that to build ZIP exclusions so they're present in the final site but _not_ the offline site.  Then the ZIP (and PDF as of right now) are added as release assets, and pushed, even if the final site isn't.  

## Setting Primary Menu Items

The primary menu appearance of an item should not have a trailing anchor ("#") like `SimpleProject.md`.  Other appearances should be denoted like `SimpleProject.md#`.  This shims mkdocs into forcing the correct layout.
