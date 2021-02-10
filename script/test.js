let testBool = false;
// var data = sessionStorage.getItem('key');
    // console.log('Default value of bool is',testBool); 
function updateBackground() {
    var
    hr = (new Date()).getHours(),
    hr = 1,
    body = document.body,
    bstyle = body.style,
    x = document.body;
    y = x.getElementsByClassName("book-menu");
    hello = document.querySelector(".hello");
    testBool = !testBool;
    // sessionStorage.setItem('key', testBool);
    // console.log('Toggled bool is',testBool); 
    if (hr<16) {
    bstyle.backgroundColor = "gray";
    bstyle.color = "black";
      for (i = 0; i < y.length; i++) {
	  y[i].style.backgroundColor = "black";
	  y[i].style.color = "yellow";
      }
  } else {
    bstyle.backgroundColor = "black";
      bstyle.color = "white";
  } 
}

// setInterval(updateBackground, 1000 * 60);
updateBackground();
// https://www.w3schools.com/html/html5_webstorage.asp
