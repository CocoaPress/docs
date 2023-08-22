---
glightbox: false
---

# Assembly Guide

The assembly guide and this documentation are intended to be used as compliments.  Find the assembly manual [here]().

[Assembly Guide :material-arrow-right: ](#){ .md-button .md-button--primary}

<script src="https://cdn.jsdelivr.net/npm/pdfjs-dist@3.9.179/build/pdf.min.js "></script>
<link href="https://cdn.jsdelivr.net/npm/pdfjs-dist@3.9.179/web/pdf_viewer.min.css " rel="stylesheet">

<style>
    .pdf-frame {
  border: .5px solid grey;
  direction: ltr;
}

    </style>
    
<div style="padding-bottom:10px;">
  <button id="prev" class="md-button .md-small">Previous</button>
  <button id="next" class="md-button .md-small">Next</button>
  &nbsp; &nbsp;
  <span>Page: <span id="page_num"></span> / <span id="page_count"></span></span>

</div>

<canvas class="pdf-frame" id="the-canvas" style="width: 100%";></canvas>


<script>// If absolute URL from the remote server is provided, configure the CORS
// header on that server.
var url = '../assets/assembly_guide_8_16_23.pdf';

// Loaded via <script> tag, create shortcut to access PDF.js exports.
var pdfjsLib = window['pdfjs-dist/build/pdf'];

// The workerSrc property shall be specified.
pdfjsLib.GlobalWorkerOptions.workerSrc = 'https://cdn.jsdelivr.net/npm/pdfjs-dist@3.9.179/build/pdf.worker.js';

var pdfDoc = null,
    pageNum = 1,
    pageRendering = true,
    pageNumPending = null,
    scale = 2.5,
    canvas = document.getElementById('the-canvas'),
    ctx = canvas.getContext('2d');

function renderPage(num) {
  pageRendering = true;
  // Using promise to fetch the page
  pdfDoc.getPage(num).then(function(page) {
    var viewport = page.getViewport({scale: scale});
    canvas.height = viewport.height;
    canvas.width = viewport.width;

    // Render PDF page into canvas context
    var renderContext = {
      canvasContext: ctx,
      viewport: viewport
    };
    var renderTask = page.render(renderContext);

    // Wait for rendering to finish
    renderTask.promise.then(function() {
      pageRendering = false;
      if (pageNumPending !== null) {
        // New page rendering is pending
        renderPage(pageNumPending);
        pageNumPending = null;
      }
    });
  });

  document.getElementById('page_num').textContent = num;
}

function queueRenderPage(num) {
  if (pageRendering) {
    pageNumPending = num;
  } else {
    renderPage(num);
  }
}

function onPrevPage() {
  if (pageNum <= 1) {
    return;
  }
  pageNum--;
  queueRenderPage(pageNum);
}
document.getElementById('prev').addEventListener('click', onPrevPage);

function onNextPage() {
  if (pageNum >= pdfDoc.numPages) {
    return;
  }
  pageNum++;
  queueRenderPage(pageNum);
}
document.getElementById('next').addEventListener('click', onNextPage);

pdfjsLib.getDocument(url).promise.then(function(pdfDoc_) {
  pdfDoc = pdfDoc_;
  document.getElementById('page_count').textContent = pdfDoc.numPages;

  renderPage(pageNum);
});
</script>

## Assembly Guide Sections

<div class="grid cards" style="grid-template-columns: repeat(auto-fit,minmax(8rem,1fr));">
  <ul>
    <li><img src = "../img/assembly/abbelts/abbelts.png" alt="A/B Belt Top-Down View from CAD"/><hr><strong>Hardware</strong></li>
    <li><img src = "../img/assembly/extrusion_prep/extrusion_prep.png" alt="A/B Belt Top-Down View from CAD"/><hr><strong>Extrusion Prep</strong></li>
    <li><img src = "../img/assembly/abbelts/abbelts.png" alt="A/B Belt Top-Down View from CAD"/><hr><strong>Frame</strong></li>
    <li><img src = "../img/assembly/abdrives/abdrives.png" alt="A/B Belt Top-Down View from CAD"/><hr><strong>A/B Drives</strong></li>
    <li><img src = "../img/assembly/abidlers/abidlers.png" alt="A/B Belt Top-Down View from CAD"/><hr><strong>A/B Idlers</strong></li>
    <li><img src = "../img/assembly/abbelts/abbelts.png" alt="A/B Belt Top-Down View from CAD"/><hr><strong>Z Axis</strong></li>
    <li><img src = "../img/assembly/x_rail/x_rail.png" alt="A/B Belt Top-Down View from CAD"/><hr><strong>X Axis</strong></li>
    <li><img src = "../img/assembly/abbelts/abbelts.png" alt="A/B Belt Top-Down View from CAD"/><hr><strong>A/B Belts</strong></li>
    <li><img src = "../img/assembly/printbed/printbed.png" alt="A/B Belt Top-Down View from CAD"/><hr><strong>Print Bed</strong></li>
    <li><img src = "../img/assembly/abbelts/abbelts.png" alt="A/B Belt Top-Down View from CAD"/><hr><strong>Extruder</strong></li>
    <li><img src = "../img/assembly/abbelts/abbelts.png" alt="A/B Belt Top-Down View from CAD"/><hr><strong>Electronics + Wiring</strong></li>
    <li><img src = "../img/assembly/abbelts/abbelts.png" alt="A/B Belt Top-Down View from CAD"/><hr><strong>Skirt & Panels</strong></li>
    <li><img src = "../img/assembly/abbelts/abbelts.png" alt="A/B Belt Top-Down View from CAD"/><hr><strong>Tophat</strong></li>
  </ul>
</div>


## Fastener Sheet

if you're unsure what fastener is which, an A4-scale reference sheet is avalible for download [here]().  On it is a 20mm x 20mm square to allow you to measure and confirm your 2D printer's bleed and margins are to scale sufficiently to identify parts.

[Fastener Sheet :material-download:](../assets/fastener_sheet_v3.pdf){ .md-button .md-button--primary}

### Note

PDF.js is licensed under <a href="https://github.com/mozilla/pdf.js/blob/master/LICENSE">Apache License 2.0</a>.

PDF.js example is from <a href="https://jsfiddle.net/pdfjs/wagvs9Lf/">here</a>.