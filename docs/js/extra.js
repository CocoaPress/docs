
function append_support_email() {
	outputElements = [];

	var list = document.getElementsByClassName("headerlink");

	// All items in the page will have headerlink classes uses exclusively for the header
	// links / section anchors.  This works for us very nicely.

	for (let h of list) {
		var copyOfItem = h.cloneNode(true); //this makes a deep copy of the element in question.

		copyOfItem.text = "✉";
		copyOfItem.title = "Email Support With This Context";
		copyOfItem.style.opacity = 1;
		h.style.opacity = 1;
		copyOfItem.href = "mailto:hello@cocoapress.com?subject=Docs Support Link: " + h.parentElement.firstChild.data + "&body=Hello Support,%0D%0A I was reading the documentation and needed clarification on something.  I was on this page: %0D%0A" + copyOfItem.href + "%0D%0A(please enter your message below here)%0D%0A";
		outputElements.push([h, copyOfItem]);
	}

	/* 
	To avoid running into in-place mutation issues (the appended item will wrap around to the next item,
	producing infinite iteration through an ifinitely expanding list.), we store the reference to the 
	original object, the object to go after it, and simply append them in a second pass.  Does not require
	going through the entire DOM tree twice, as far as I can tell. 
	*/
	for (let temp of outputElements) {
		temp[0].outerHTML = temp[1].outerHTML + temp[0].outerHTML;
	}
}

append_support_email()
