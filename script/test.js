function updateBackground() {
  var 
    hr = (new Date()).getHours(),
    body = document.body,
    bstyle = body.style,
    x = document.body;
    y = x.getElementsByClassName("book-menu");
    hello = document.querySelector(".hello");    
  if (hr < 16) {
    bstyle.backgroundColor = "white";
    bstyle.color = "black";
      for (i = 0; i < y.length; i++) {
	  y[i].style.backgroundColor = "black";
	  y[i].style.color = "red";
      }
           
  } else {
    bstyle.backgroundColor = "black";
    bstyle.color = "white";
  } 
}

setInterval(updateBackground, 1000 * 60);
updateBackground();
