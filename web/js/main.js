function changeStyle() {
    if(document.getElementById('style').getAttribute('href') === "css/style.css"){
        document.getElementById('style').setAttribute('href',"css/style2.css");
    }
    else
        document.getElementById('style').setAttribute('href',"css/style.css");
}
function onloadStyle(){
    var t = new Date();
    var hour = t.getUTCHours() + 3;
    if(hour >= 20){
        document.getElementById('style').setAttribute('href',"css/style2.css");
    }
    if(hour < 5){
        document.getElementById('style').setAttribute('href',"css/style2.css");
    }
    if(hour>=5 && hour < 20){
        document.getElementById('style').setAttribute('href',"css/style.css");
    }
}

function fadeIn() {
    var i = 1;
    var timerId = setInterval(function () {
        id = '#' + i;
        console.log(id);
        $(id).fadeIn(500);
        if (i == 2) clearInterval(timerId);
        i++;
    }, 1000);
}
function fadeInLink() {
    var i = 1;
    var timerId = setInterval(function () {
        id = '#' + i;
        console.log(id);
        $(id).fadeIn(500);
        if (i == 4) clearInterval(timerId);
        i++;
    }, 500);
}

function fadeInBeauty() {
    var i = 1;
    var timerId = setInterval(function () {
        id = '#' + i;
        console.log(id);
        $(id).fadeIn(1000);
        if (i == 3) clearInterval(timerId);
        i++;
    }, 500);
}

function validateEmail() {
    var value = document.getElementById('exampleInputEmail1').value;
    var reg = /^([A-Za-z0-9_\-\.])+\@([A-Za-z0-9_\-\.])+\.([A-Za-z]{2,4})$/;
    var address = value;
    if (reg.test(address) == false) {
        document.getElementById('error').hidden = false;
        document.getElementById('correct').hidden = true;
    } else {
        document.getElementById('error').hidden = true;
        document.getElementById('correct').hidden = false;
    }
}
