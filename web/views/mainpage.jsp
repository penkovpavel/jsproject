<%@ page contentType="text/html" language="java" %>
<html lang="en">
<head>
    <title>Guzel Musina</title>
    <link href="https://fonts.googleapis.com/css?family=Nothing+You+Could+Do" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css?family=Abril+Fatface|Oswald" rel="stylesheet">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.0/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.0/umd/popper.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.0/js/bootstrap.min.js"></script>
    <link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet">
    <script src="js/main.js"></script>
    <link id = "style" href="css/style.css" rel="stylesheet">/

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
<div class="titleMe">
    <div style="height: 50px;"></div>
    <div class="container">
        <h1 class="display-4">Guzel Musina</h1>
        <p></p>
        <p class="text">I am from Kazan, Russia.
            In january 2018 I became the owner of the title "Miss Kazan 2018", in april 2018 I became the owner of the
            title "Miss Culture and Torism of the World 2018".
            I am student of Kazan Federal University and I will be an IT specialist in my future.
            Moreover, I work as model since 2012, I always participate on our national and culture events.
            I meet the delegation from other cities and countries, because I am the face of our Republic.
            I dance about 15 years. In my free time I like to travel, read books, dance and meeting with my friends.
            I like to do good acts for people, I am kind and self-confident. </p>
        <p class="lead">If you want know me better you can find all information here</p>
    </div>
    <div class="row">
        <div class="container">
            <div id="carouselExampleControls" class="carousel slide" data-ride="carousel">
                <div class="carousel-inner">
                    <div class="carousel-item active">
                        <div class="col-12">
                            <center>
                                <div class="card" style="width: 20rem; ">
                                    <img class="card-img-top" src="image/DSC09633.jpg" alt="Read">
                                    <div class="card-body">
                                        <p></p>
                                        <p class="card-text">Read about Miss Kazan, Miss Culture and Tourism World and model life</p>
                                    </div>
                                    <p></p>
                                    <a href="miss" style="text-align: center">
                                        <button type="button" class="btn btn-outline-danger">Read more </button> </a>
                                </div>
                            </center>
                        </div>
                    </div>
                    <div class="carousel-item">
                        <div class="col-12" >
                            <center>
                                <div class="card" style="width: 20rem;">
                                    <img class="card-img-top" src="image/DP3354.jpg" alt="Read">
                                    <div class="card-body">
                                        <p></p>
                                        <p class="card-text">Watching video with me, some interview and my video from travel</p>
                                    </div>
                                    <p></p>
                                    <a href="miss" style="text-align: center">
                                        <button type="button" class="btn btn-outline-danger"> Watch more</button> </a>
                                </div>
                            </center>
                        </div>
                    </div>
                    <div class="carousel-item">
                        <div class="col-12">
                            <center>
                                <div class="card" style="width: 20rem;">
                                    <img class="card-img-top" src="image/AW2B7483.jpg" alt="Read">
                                    <div class="card-body">
                                        <p></p>
                                        <p class="card-text">Read about interesting fact about me, about my chlidhood</p>
                                    </div>
                                    <p></p>
                                    <a href="miss" style="text-align: center">
                                        <button type="button" class="btn btn-outline-danger">Read more</button> </a>
                                </div>
                            </center>

                        </div>
                    </div>
                </div>
                <a class="carousel-control-prev" href="#carouselExampleControls" role="button" data-slide="prev">
                    <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                    <span class="sr-only">Previous</span>
                </a>
                <a class="carousel-control-next" href="#carouselExampleControls" role="button" data-slide="next">
                    <span class="carousel-control-next-icon" aria-hidden="true"></span>
                    <span class="sr-only">Next</span>
                </a>
            </div>
        </div>
        </div>
</div>
<div style="height: 300px;"></div>


</body>
</html>