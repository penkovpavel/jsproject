<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!doctype html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>AskMe</title>
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
<body>
<script> onloadStyle() </script>
<nav class="navbar navbar-expand-lg navbar-light bg-light fixed-top">
    <a class="navbar-brand" href="news">News</a>
    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent"
            aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="navbarSupportedContent">
        <ul class="navbar-nav mr-auto">
            <li class="nav-item active">
                <a class="nav-link" href="/">Home <span class="sr-only">(current)</span></a>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="link">Link</a>
            </li>
            <li class="nav-item dropdown">
                <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown"
                   aria-haspopup="true" aria-expanded="false">
                    More
                </a>
                <div class="dropdown-menu" aria-labelledby="navbarDropdown">
                    <a class="dropdown-item" href="beuty">Beauty</a>
                    <a class="dropdown-item" href="#">Photo</a>
                    <div class="dropdown-divider"></div>
                    <a class="dropdown-item" href="ask">Ask me</a>
                </div>
            </li>
        </ul>
        <form class="form-inline my-2 my-lg-0">
            <button class="btn btn-light" onclick = "changeStyle(); return false;" id="buttonChangeStyle">Change style</button>
        </form>
    </div>
</nav>
<div style="height: 50px;"></div>
<form >
    <div class="container">
        <p></p>
        <h1 class="display-4">Some questions?</h1>
        <div class="form-group">
            <p></p>
            <label for="exampleInputEmail1" id = "pink">Email address</label>
            <input type="text" name="email" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp"
                   placeholder="Enter email">
            <small id="emailHelp" class="form-text text-muted" id = "pink2">For answer your question</small>
            <div class="alert alert-danger" hidden id ="error"> <strong>Wrong!</strong> Enter email again! </div>
            <div class="alert alert-success" hidden id ="correct"> <strong>Right!</strong> Good day!</div>

        </div>
        <div class="form-group">
            <label for="exampleFormControlTextarea1" id = "pink3">Write your question here</label>
            <textarea type="text" name="answer" class="form-control" id="exampleFormControlTextarea1"
                      rows="3"></textarea>
        </div>
        <div class="form-group form-check">
            <input type="checkbox" class="form-check-input" id="exampleCheck1">
            <label class="form-check-label" for="exampleCheck1" value="post?" name="post?" id = "pink4">Post a reply to the
                question</label>
        </div>
        <button type="submit" name="" class="btn btn-outline-dark" id = "pink5" onclick = "validateEmail(); return false">Submit</button>
    </div>
</form>
<div style="height: 300px;"></div>

</body>
</html>