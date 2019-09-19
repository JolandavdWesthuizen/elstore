<%@include file="/WEB-INF/views/template/header.jsp" %>



<!-- Carousel
================================================== -->
<div id="myCarousel" class="carousel slide" data-ride="carousel">
    <!-- Indicators -->
    <ol class="carousel-indicators">
        <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
        <li data-target="#myCarousel" data-slide-to="1"></li>
        <li data-target="#myCarousel" data-slide-to="2"></li>
    </ol>
    <div class="carousel-inner" role="listbox">
        <div class="item active">
            <img class="first-slide home-image"
                 src="<c:url value="/resources/images/back1.jpg" />"
                 alt="First slide">

            <div class="container">
                <div class="carousel-caption">
                    <h1>Welcome to Toy World</h1>

                    <p>Here you can browse and buy family fun games, Lego's, outdoor toys and any other for your child desire. </p>

                </div>
            </div>
        </div>
        <div class="item">
            <img class="second-slide home-image"
                 src="<c:url value="/resources/images/back2.jpg" />"
                 alt="Second slide">

            <div class="container">
                <div class="carousel-caption">
                    <h1>Fun Fact You Should Know About Kids</h1>

                    <p>Toys are more than just fun and games for kids. Most toys provide at least some opportunity for children to learn.</p>

                </div>
            </div>
        </div>
        <div class="item">
            <img class="third-slide home-image"
                 src="<c:url value="/resources/images/back3.jpg" />"
                 alt="Third slide">

            <div class="container">
                <div class="carousel-caption">
                    <h1>Happy kids...</h1>

                    <p>Play all day long.</p>

                </div>
            </div>
        </div>
    </div>
    <a class="left carousel-control" href="#myCarousel" role="button" data-slide="prev">
        <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
        <span class="sr-only">Previous</span>
    </a>
    <a class="right carousel-control" href="#myCarousel" role="button" data-slide="next">
        <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
        <span class="sr-only">Next</span>
    </a>
</div>
<!-- /.carousel -->


<!-- Marketing messaging and featurettes
================================================== -->
<!-- Wrap the rest of the page in another container to center all the content. -->

<div class="container marketing">

    <!-- Three columns of text below the carousel -->
    <div class="row">
        <div class="col-lg-4">
            <a class="btn btn-default" href="<c:url value="/product/productList?searchCondition=Boardgames" />"
               role="button">
                <img class="img-circle" src="<c:url value="/resources/images/boardgames.jpg" />" alt="Instrument
                Image" width="140" height="140"></a>

            <h2>Board Games</h2>

        </div><!-- /.col-lg-4 -->



    <div class="row">
        <div class="col-lg-4">
            <a class="btn btn-default" href="<c:url value="/product/productList?searchCondition=Electronic" />"
               role="button">
                <img class="img-circle" src="<c:url value="/resources/images/electronic.jpg" />" alt="Instrument
                Image" width="140" height="140"></a>

            <h2>Electronic Toys</h2>

        </div><!-- /.col-lg-4 -->

    <div class="row">
        <div class="col-lg-4">
            <a class="btn btn-default" href="<c:url value="/product/productList?searchCondition=Outdoor" />"
               role="button">
                <img class="img-circle" src="<c:url value="/resources/images/outdoor.jpg" />" alt="Instrument
                Image" width="140" height="140"></a>

            <h2>Outdoor Play</h2>

        </div><!-- /.col-lg-4 -->
        
      <div class="row">
        <div class="col-lg-4">
            <a class="btn btn-default" href="<c:url value="/product/productList?searchCondition=Collectables" />"
               role="button">
                <img class="img-circle" src="<c:url value="/resources/images/collectables.jpg" />" alt="Instrument
                Image" width="140" height="140"></a>

            <h2>Collectables</h2>

        </div><!-- /.col-lg-4 -->



    <div class="row">
        <div class="col-lg-4">
            <a class="btn btn-default" href="<c:url value="/product/productList?searchCondition=dollsandaccessories" />"
               role="button">
                <img class="img-circle" src="<c:url value="/resources/images/dollsandaccessories.jpg" />" alt="Instrument
                Image" width="140" height="140"></a>

            <h2>Dolls and Accessories</h2>

        </div><!-- /.col-lg-4 -->

    <div class="row">
        <div class="col-lg-4">
            <a class="btn btn-default" href="<c:url value="/product/productList?searchCondition=Lego" />"
               role="button">
                <img class="img-circle" src="<c:url value="/resources/images/lego.jpg" />" alt="Instrument
                Image" width="140" height="140"></a>

            <h2>Lego</h2>

        </div><!-- /.col-lg-4 -->
        
      <div class="row">
        <div class="col-lg-4">
            <a class="btn btn-default" href="<c:url value="/product/productList?searchCondition=Bicycles" />"
               role="button">
                <img class="img-circle" src="<c:url value="/resources/images/bicycles.jpg" />" alt="Instrument
                Image" width="140" height="140"></a>

            <h2>Bicycles</h2>

        </div><!-- /.col-lg-4 -->



    <div class="row">
        <div class="col-lg-4">
            <a class="btn btn-default" href="<c:url value="/product/productList?searchCondition=Babies" />"
               role="button">
                <img class="img-circle" src="<c:url value="/resources/images/babies.jpg" />" alt="Instrument
                Image" width="140" height="140"></a>

            <h2>Babies</h2>

        </div><!-- /.col-lg-4 -->

    <div class="row">
        <div class="col-lg-4">
            <a class="btn btn-default" href="<c:url value="/product/productList?searchCondition=Creative" />"
               role="button">
                <img class="img-circle" src="<c:url value="/resources/images/creative.jpg" />" alt="Instrument
                Image" width="140" height="140"></a>

            <h2>Creative</h2>

        </div><!-- /.col-lg-4 -->   
        


    </div><!-- /.row -->

    <%@include file="/WEB-INF/views/template/footer.jsp" %>

