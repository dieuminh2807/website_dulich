<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Du lịch Việt Nam</title>
    <script src="static/jQuery/jquery-3.3.1.min.js"></script>
    <script src="static/jQuery/moment.js"></script>
    <script src="static/js/xulydattour.js"></script>
    <script src="static/bootstrap/js/bootstrap.js"></script>
    <script src="static/bootstrap/js/bootstrap.bundle.js"></script>

    <%--<script src="static/tempusdominus/js/tempusdominus-bootstrap-4.js"></script>--%>

    <link rel="stylesheet" href="static/bootstrap/css/bootstrap.css">
    <link rel="stylesheet" href="static/bootstrap/css/bootstrap-grid.css">
    <link rel="stylesheet" href="static/bootstrap/css/bootstrap-reboot.css">
    <link rel="stylesheet" href="static/css/newStyle.css">
    <link href="static/font-awesome-4.7.0/css/font-awesome.min.css" rel="stylesheet">

    <script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/tempusdominus-bootstrap-4/5.0.0-alpha14/js/tempusdominus-bootstrap-4.min.js"></script>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/tempusdominus-bootstrap-4/5.0.0-alpha14/css/tempusdominus-bootstrap-4.min.css" />



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
                <a class="nav-link" href="/">Trang chủ<span class="sr-only">(current)</span></a>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="#">Về chúng tôi</a>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="#">Hướng dẫn đặt tour</a>
            </li>
        </ul>
        <form class="form-inline my-2 my-lg-0" action="/ktimkiem" method="post">
            <input class="form-control mr-sm-2" type="search" placeholder="Tìm kiếm" aria-label="Search" name = "tukhachnhap">
            <button class="btn btn-outline-success my-2 my-sm-0" type="submit">Tìm kiếm</button>
        </form>
    </div>
</nav>
<br/>

<div class="container" style="min-height: 400px">
    <div class="row">
        <div class="col-sm-3">
            <div class="card border-success">
                <div class="card-header bg-success text-white">Danh Mục</div>
                <div class="card-block">
                    <ul class="list-group">
                        <c:forEach items="${requestScope.listLoaiTour}" var="loaitour">
                            <li class="list-group-item"><a href="/danhsachtourtheoloai?maloaitour=${loaitour.key}">${loaitour.value}</a></li>
                        </c:forEach>
                    </ul>
                </div>
            </div>
        </div>
        <div class="col-sm-9">
            <jsp:include page="../Main-ringht.jsp"></jsp:include>
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
