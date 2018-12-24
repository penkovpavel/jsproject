<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!doctype html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Link</title>
    <link href="https://fonts.googleapis.com/css?family=Nothing+You+Could+Do" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css?family=Abril+Fatface|Oswald" rel="stylesheet">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.0/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.0/umd/popper.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.0/js/bootstrap.min.js"></script>
    <link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet">
    <script src="js/main.js"></script>
    <link id = "style" href="css/style.css" rel="stylesheet">\
</head>
<body onload ="fadeInLink()">
<script> onloadStyle() </script>
<nav class="navbar navbar-expand-lg navbar-light bg-light fixed-top" >
    <a class="navbar-brand" href="news.html">News</a>
    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent"
            aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
    </button>

    <div class="collapse navbar-collapse" id="navbarSupportedContent">
        <ul class="navbar-nav mr-auto">
            <li class="nav-item active">
                <a class="nav-link" href="mainpage.html">Home <span class="sr-only">(current)</span></a>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="link.html">Link</a>
            </li>
            <li class="nav-item dropdown">
                <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown"
                   aria-haspopup="true" aria-expanded="false">
                    More
                </a>
                <div class="dropdown-menu" aria-labelledby="navbarDropdown">
                    <a class="dropdown-item" href="beuty.html">Beauty</a>
                    <a class="dropdown-item" href="#">Photo</a>
                    <div class="dropdown-divider"></div>
                    <a class="dropdown-item" href="ask.html">Ask me</a>
                </div>
            </li>
        </ul>
        <form class="form-inline my-2 my-lg-0">
            <button class="btn btn-light" onclick = "changeStyle(); return false;" id="buttonChangeStyle">Change style</button>
        </form>
    </div>
</nav>
<div style="height: 50px;"></div>
<div class="links">
    <div class="container">
        <h1 class="display-4">Links</h1>
        <p></p>
        <div class="linksall">
            <p><a class="btn btn-link" href="https://instagram.com/euphoriaendlesss" id ="1" style ="display: none">Instagram</a>
            </p>

            <p><a class="btn btn-link"  href="http://vk.com/g.musi" id ="2" style ="display: none">
                VK
            </a></p>
            <p><a class="btn btn-link"  href="https://twitter.com/euphoriaendless" id ="3" style ="display: none">Twitter</a>
            </p>
            <p><a class="btn btn-link"  href=" https://facebook.com/guzel.musina" id ="4" style ="display: none">
                Facebook</a></p>
            </p>
        </div>
    </div>
</div>
<div style="height: 700px;"></div>

</body>
</html>