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

    <script type="text/javascript"
            src="https://cdnjs.cloudflare.com/ajax/libs/tempusdominus-bootstrap-4/5.0.0-alpha14/js/tempusdominus-bootstrap-4.min.js"></script>
    <link rel="stylesheet"
          href="https://cdnjs.cloudflare.com/ajax/libs/tempusdominus-bootstrap-4/5.0.0-alpha14/css/tempusdominus-bootstrap-4.min.css"/>


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
            <li class="nav-item dropdown">
                <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown"
                   aria-haspopup="true" aria-expanded="false">
                    Loại tour
                </a>
                <div class="dropdown-menu" aria-labelledby="navbarDropdown">
                    <c:forEach items="${requestScope.listLoaiTour}" var="loaitour">
                        <a class="dropdown-item"
                           href="/danhsachtourtheoloai?maloaitour=${loaitour.key}">${loaitour.value}</a>
                    </c:forEach>
                </div>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="#">Về chúng tôi</a>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="#">Hướng dẫn đặt tour</a>
            </li>
        </ul>
        <c:if test="${requestScope.main_right != 'timkiem'}">
            <form class="form-inline my-2 my-lg-0" action="/ktimkiem" method="post">
                <input class="form-control mr-sm-2" type="search" placeholder="Tìm kiếm" aria-label="Search"
                       name="tukhachnhap">
                <button class="btn btn-outline-success my-2 my-sm-0" type="submit">Tìm kiếm</button>
            </form>
        </c:if>
    </div>
</nav>


<div class="container" style="min-height: 400px">
    <div class="row">
        <div class="col-sm-12">
            <div style="width:100%; height: 450px;">
                <jsp:include page="../banner.jsp"></jsp:include>
            </div>
            <br/>
        </div>
    </div>
    <div class="row">
        <div class="col-sm-12">
            <jsp:include page="../Main-ringht.jsp"></jsp:include>
        </div>
    </div>
</div>
<br/>

<div class="fb-like"
     data-href="https://www.facebook.com/Du-l%E1%BB%8Bch-Vi%E1%BB%87t-Nam-490062761481349/?modal=admin_todo_tour"
     data-layout="button_count" data-action="like" data-size="large" data-show-faces="true" data-share="true"></div>

<br/>

<div id="fb-root"></div>
<script>(function (d, s, id) {
    var js, fjs = d.getElementsByTagName(s)[0];
    if (d.getElementById(id)) return;
    js = d.createElement(s);
    js.id = id;
    js.src = 'https://connect.facebook.net/vi_VN/sdk.js#xfbml=1&version=v3.2';
    fjs.parentNode.insertBefore(js, fjs);
}(document, 'script', 'facebook-jssdk'));</script>

<jsp:include page="../footer.jsp"></jsp:include>
</body>
</html>
