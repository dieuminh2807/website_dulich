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
    <div class="col-2">
        <a class="nav-link" href="/">
            <img src="/static/image/logo.png" alt="Logo Dieu Minh" style="max-width: 100px">
        </a>
    </div>
    <div class="collapse navbar-collapse col-8" id="navbarSupportedContent">
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
    <jsp:include page="phone.jsp"></jsp:include>
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


<style>.fb-livechat, .fb-widget {
    display: none
}

.ctrlq.fb-button, .ctrlq.fb-close {
    position: fixed;
    right: 24px;
    cursor: pointer
}

.ctrlq.fb-button {
    z-index: 999;
    background: url(data:image/svg+xml;base64,PD94bWwgdmVyc2lvbj0iMS4wIiA/PjwhRE9DVFlQRSBzdmcgIFBVQkxJQyAnLS8vVzNDLy9EVEQgU1ZHIDEuMS8vRU4nICAnaHR0cDovL3d3dy53My5vcmcvR3JhcGhpY3MvU1ZHLzEuMS9EVEQvc3ZnMTEuZHRkJz48c3ZnIGVuYWJsZS1iYWNrZ3JvdW5kPSJuZXcgMCAwIDEyOCAxMjgiIGhlaWdodD0iMTI4cHgiIGlkPSJMYXllcl8xIiB2ZXJzaW9uPSIxLjEiIHZpZXdCb3g9IjAgMCAxMjggMTI4IiB3aWR0aD0iMTI4cHgiIHhtbDpzcGFjZT0icHJlc2VydmUiIHhtbG5zPSJodHRwOi8vd3d3LnczLm9yZy8yMDAwL3N2ZyIgeG1sbnM6eGxpbms9Imh0dHA6Ly93d3cudzMub3JnLzE5OTkveGxpbmsiPjxnPjxyZWN0IGZpbGw9IiMwMDg0RkYiIGhlaWdodD0iMTI4IiB3aWR0aD0iMTI4Ii8+PC9nPjxwYXRoIGQ9Ik02NCwxNy41MzFjLTI1LjQwNSwwLTQ2LDE5LjI1OS00Niw0My4wMTVjMCwxMy41MTUsNi42NjUsMjUuNTc0LDE3LjA4OSwzMy40NnYxNi40NjIgIGwxNS42OTgtOC43MDdjNC4xODYsMS4xNzEsOC42MjEsMS44LDEzLjIxMywxLjhjMjUuNDA1LDAsNDYtMTkuMjU4LDQ2LTQzLjAxNUMxMTAsMzYuNzksODkuNDA1LDE3LjUzMSw2NCwxNy41MzF6IE02OC44NDUsNzUuMjE0ICBMNTYuOTQ3LDYyLjg1NUwzNC4wMzUsNzUuNTI0bDI1LjEyLTI2LjY1N2wxMS44OTgsMTIuMzU5bDIyLjkxLTEyLjY3TDY4Ljg0NSw3NS4yMTR6IiBmaWxsPSIjRkZGRkZGIiBpZD0iQnViYmxlX1NoYXBlIi8+PC9zdmc+) center no-repeat #0084ff;
    width: 60px;
    height: 60px;
    text-align: center;
    bottom: 100px;
    border: 0;
    outline: 0;
    border-radius: 60px;
    -webkit-border-radius: 60px;
    -moz-border-radius: 60px;
    -ms-border-radius: 60px;
    -o-border-radius: 60px;
    box-shadow: 0 1px 6px rgba(0, 0, 0, .06), 0 2px 32px rgba(0, 0, 0, .16);
    -webkit-transition: box-shadow .2s ease;
    background-size: 80%;
    transition: all .2s ease-in-out
}

.ctrlq.fb-button:focus, .ctrlq.fb-button:hover {
    transform: scale(1.1);
    box-shadow: 0 2px 8px rgba(0, 0, 0, .09), 0 4px 40px rgba(0, 0, 0, .24)
}

.fb-widget {
    background: #fff;
    z-index: 1000;
    position: fixed;
    width: 360px;
    height: 435px;
    overflow: hidden;
    opacity: 0;
    bottom: 0;
    right: 24px;
    border-radius: 6px;
    -o-border-radius: 6px;
    -webkit-border-radius: 6px;
    box-shadow: 0 5px 40px rgba(0, 0, 0, .16);
    -webkit-box-shadow: 0 5px 40px rgba(0, 0, 0, .16);
    -moz-box-shadow: 0 5px 40px rgba(0, 0, 0, .16);
    -o-box-shadow: 0 5px 40px rgba(0, 0, 0, .16)
}

.fb-credit {
    text-align: center;
    margin-top: 8px
}

.fb-credit a {
    transition: none;
    color: #bec2c9;
    font-family: Helvetica, Arial, sans-serif;
    font-size: 12px;
    text-decoration: none;
    border: 0;
    font-weight: 400
}

.ctrlq.fb-overlay {
    z-index: 0;
    position: fixed;
    height: 100vh;
    width: 100vw;
    -webkit-transition: opacity .4s, visibility .4s;
    transition: opacity .4s, visibility .4s;
    top: 0;
    left: 0;
    background: rgba(0, 0, 0, .05);
    display: none
}

.ctrlq.fb-close {
    z-index: 4;
    padding: 0 6px;
    background: #365899;
    font-weight: 700;
    font-size: 11px;
    color: #fff;
    margin: 8px;
    border-radius: 3px
}

.ctrlq.fb-close::after {
    content: "X";
    font-family: sans-serif
}

.bubble {
    width: 20px;
    height: 20px;
    background: #c00;
    color: #fff;
    position: absolute;
    z-index: 999999999;
    text-align: center;
    vertical-align: middle;
    top: -2px;
    left: -5px;
    border-radius: 50%;
}

.bubble-msg {
    width: 120px;
    left: -140px;
    top: 5px;
    position: relative;
    background: rgba(59, 89, 152, .8);
    color: #fff;
    padding: 5px 8px;
    border-radius: 8px;
    text-align: center;
    font-size: 13px;
}</style>
<div class="fb-livechat">
    <div class="ctrlq fb-overlay"></div>
    <div class="fb-widget">
        <div class="ctrlq fb-close"></div>
        <div class="fb-page" data-href="https://www.facebook.com/Du-l%E1%BB%8Bch-Vi%E1%BB%87t-Nam-490062761481349/?modal=admin_todo_tour" data-tabs="messages" data-width="360"
             data-height="400" data-small-header="true" data-hide-cover="true" data-show-facepile="false"></div>
        <div class="fb-credit"><a href="#" target="_blank"></a></div>
        <div id="fb-root"></div>
    </div>
    <a href="https://m.me/" title="Gửi tin nhắn cho chúng tôi qua Facebook" class="ctrlq fb-button">
        <div class="bubble">1</div>
        <div class="bubble-msg">Bạn cần hỗ trợ?</div>
    </a></div>
<script src="https://connect.facebook.net/en_US/sdk.js#xfbml=1&version=v2.9"></script>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/2.1.3/jquery.min.js"></script>
<script>$(document).ready(function () {
    function detectmob() {
        if (navigator.userAgent.match(/Android/i) || navigator.userAgent.match(/webOS/i) || navigator.userAgent.match(/iPhone/i) || navigator.userAgent.match(/iPad/i) || navigator.userAgent.match(/iPod/i) || navigator.userAgent.match(/BlackBerry/i) || navigator.userAgent.match(/Windows Phone/i)) {
            return true;
        } else {
            return false;
        }
    }

    var t = {delay: 125, overlay: $(".fb-overlay"), widget: $(".fb-widget"), button: $(".fb-button")};
    setTimeout(function () {
        $("div.fb-livechat").fadeIn()
    }, 8 * t.delay);
    if (!detectmob()) {
        $(".ctrlq").on("click", function (e) {
            e.preventDefault(), t.overlay.is(":visible") ? (t.overlay.fadeOut(t.delay), t.widget.stop().animate({
                bottom: 0,
                opacity: 0
            }, 2 * t.delay, function () {
                $(this).hide("slow"), t.button.show()
            })) : t.button.fadeOut("medium", function () {
                t.widget.stop().show().animate({bottom: "30px", opacity: 1}, 2 * t.delay), t.overlay.fadeIn(t.delay)
            })
        })
    }
});</script>


<jsp:include page="../footer.jsp"></jsp:include>
</body>
</html>
