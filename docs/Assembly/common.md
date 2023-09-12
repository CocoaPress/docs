<script src="https://cdn.jsdelivr.net/npm/pdfjs-dist@3.9.179/build/pdf.min.js "></script>
<link href="https://cdn.jsdelivr.net/npm/pdfjs-dist@3.9.179/web/pdf_viewer.min.css " rel="stylesheet">

<div style="padding-bottom:10px;">
  <button id="prev" class="md-button .md-small">Previous</button>
  <button id="next" class="md-button .md-small">Next</button>
  &nbsp; &nbsp;
  <span>Page: <span id="page_num"></span> / <span id="page_count"></span></span>

</div>

<canvas class="pdf-frame" id="the-canvas" style="width: 100%";></canvas>

<script>
// If absolute URL from the remote server is provided, configure the CORS
// header on that server.
var url = '../assets/assembly_manual.pdf';

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
