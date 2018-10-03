<html>
<head>
    <title>Trang Chu</title>
    <link rel="stylesheet" href="static/bootstrap/css/bootstrap.css">
    <link rel="stylesheet" href="static/bootstrap/css/bootstrap-grid.css">
    <link rel="stylesheet" href="static/bootstrap/css/bootstrap-reboot.css">
    <script src="static/bootstrap/js/bootstrap.js"></script>
    <script src="static/bootstrap/js/bootstrap.bundle.js"></script>


    <%--<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">--%>
    <%--<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>--%>
    <%--<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>--%>
    <%--<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>--%>
    <%----%>
</head>
<body>
<nav class="navbar navbar-expand-lg navbar-light bg-light">
    <a class="navbar-brand" href="#"></a>
    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent"
            aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
    </button>

    <div class="collapse navbar-collapse" id="navbarSupportedContent">
        <ul class="navbar-nav mr-auto">
            <li class="nav-item active">
                <a class="nav-link" href="index.jsp">Trang chủ<span class="sr-only">(current)</span></a>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="#">Về chúng tôi</a>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="#">Hướng dẫn đặt tour</a>
            </li>
        </ul>
        <form class="form-inline my-2 my-lg-0" action="/ktimkiem" method="post">
            <input class="form-control mr-sm-2" type="search" placeholder="Search" aria-label="Search" name = "tukhachnhap">
            <button class="btn btn-outline-success my-2 my-sm-0" type="submit">Tìm kiếm</button>
        </form>
    </div>
</nav>
<br/>

<div class="container">
    <div class="row">
        <div class="col-sm-3">
            <div class="card border-success">
                <div class="card-header bg-success text-white">Danh Mục</div>
                <div class="card-block">
                    <ul class="list-group">
                        <li class="list-group-item">Tour du lịch mới</li>
                        <li class="list-group-item">Tour du lịch nhiều người đi</li>
                        <li class="list-group-item">Tour du lịch có khuyến mãi</li>
                        <li class="list-group-item">Các tour du lịch miền Bắc</li>
                        <li class="list-group-item">Các tour du lịch miền Trung</li>
                        <li class="list-group-item">Các tour du lịch miền Nam</li>
                    </ul>
                </div>

            </div>
        </div>
        <div class="col-sm-9">
            <jsp:include page="Main-ringht.jsp"></jsp:include>
        </div>
    </div>
</div>


<br/>
<footer>
    <div class="container-fluid bg-primary py-50">
        <div class="container">
            <div class="row">
                <div class="col-md-7">
                    <div class="row py-0">
                        <div class="col-sm-1 hidden-md-down">
                            <a class="bg-circle bg-info" href="#">
                                <i class="fa fa-2x fa-fw fa-address-card" aria-hidden="true "></i>
                            </a>
                        </div>
                        <div class="col-sm-11 text-white">
                            <div><h4>  Contact</h4>
                                <p>   <span class="header-font">M</span>y<span class="header-font">w</span>website.com</p>
                            </div>
                        </div>
                    </div>
                </div>
                <p class="text-center"> Copyright © Footer Mywebsite Plugin 2014. All right reserved. </p>
            </div>
        </div>
    </div>
</footer>
</body>
</html>
