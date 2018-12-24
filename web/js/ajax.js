var global = 0;
function printPosts() {
    var list = $("#post-list");
    $.ajax({
        url: "/news",
        type: "post",
        data: {
            "ajax": "getPosts",
            "lastid": global
        },
        success: function (msg) {
            global = global+10;
            if (msg.posts.length > 0 && msg.posts[0].id == global-9) {

                for (var i = 0; i < msg.posts.length; i++) {
                    if(check(msg.posts[i].text)){
                        list.append("<div id = \"" + msg.posts[i].id + "\" class=\"post\">\n" +
                            "<h2 style='padding: 20px;'>" + msg.posts[i].text + "</h2>\n" +
                            "</div>\n" +
                            "<br>")
                    } else {
                        list.append("<div id = \"" + msg.posts[i].id + "\" class=\"post\">\n" +
                            "<h2 style='padding: 20px;'>" + msg.posts[i].text.substring(0,100)+".." + "</h2>\n" +
                            "<a style='padding: 20px;'><button onclick=\"modal(' + msg.posts[i].id + ')\" style ='margin-bottom: 20px;' type=\"button\" id=\""+msg.posts[i].id+"\"class=\" btn btn-outline-danger \" >Read more</button></a>" +
                            "</div>\n" +
                            "<br>")
                    }
                }
            }
        },
        error: function (msg) {
            alert("error");
        }
    });


}



function check(text) {
    if(text.length > 100) {
        return false;
    }
    return true;
}

function fadeIn() {
    var i = 1;
    var timerId = setInterval(function t() {
        if (i == global) {
        } else {
            id = '#' + i;
            console.log(id);
            $(id).fadeIn(500);
            i++;
        }
    }, 1000);
}

function dynamic() {
    $(window).scroll(function () {
        if ($(window).scrollTop() >= $(document).height() - $(window).height() - 10) {
            printPosts()
        }
    });
};

