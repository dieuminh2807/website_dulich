    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
        <link rel="stylesheet" href="static/css/effect.css">

        <div class="row">
        <div class="col-8">
        <div class="card">
        <div class="card-header bg-danger text-white">Thông tin</div>
        <div class="card-body">
        <div class="row">


        <c:forEach items="${requestScope.tourlist4}" var="tour" begin="0" end="3">
            <div class="col-6" style="max-height: 250px; margin-bottom: 10px; min-height: 165px">
            <div class="hovereffect1">
            <img class="img-responsive" src="../${tour.hinhshow}" alt="Card image cap"
            style="max-height: 250px; min-height: 250px">
            <div class="overlay1">
            <h2>${tour.tenTour}</h2>
            <a class="info" href="/xemchitiettour?matour=${tour.maTourdb}">Xem chi tiết</a>
            </div>
            </div>
            </div>
        </c:forEach>

        <c:forEach items="${requestScope.tourlist3}" var="tour">
            <div class="col-12" style="max-height: 175px; margin-bottom: 10px; min-height: 175px;width: 720px">
            <div class="post-container">
            <div class="post-thumb" style="width: 200px"><div class="hovereffect1" style="width: 200px"><a
            href="/xemchitiettour?matour=${tour.maTourdb}"><img style=" min-height: 150px; max-height: 150px"
            src="../${tour.hinhshow}"/></a></div></div>
            <div class="post-content">
            <h5><a class="post-title" href="/xemchitiettour?matour=${tour.maTourdb}">
            ${tour.tenTour}</a></h5>
            <p>Nằm giữa nơi giao thoa của ba nền văn hóa lớn châu ...</p>
            <i class="fa fa-clock-o"></i>
            <span style="color: #0aa0fe;font-style: italic;font-weight: bold;font-size: 11px;">${tour.khoihanh}</span>
            </div>
            </div>
            </div>
        </c:forEach>
        </div>


        </div>
        </div>
        </div>


        <div class="col-4">

        <div class="card-header color-input-field bg-info text-white" style="text-align: center">Tin được quan tâm
        </div>
        <c:forEach items="${requestScope.tourlist5}" var="tour" begin="0" end="7">
            <div class="col-12">
            <div class="post-container">
            <div class="post-thumb"><img style="max-width: 100px; min-height: 70px; max-height:
            70px; margin: 10px 10px 10px 10px" src="../${tour.hinhshow}"/></div>
            <div>
            <a class="post-title info" href="/xemchitiettour?matour=${tour.maTourdb}">
            <h6>${tour.tenTour}</h6></a>
            <i class="fa fa-clock-o"></i>
            <span style="color: #0aa0fe;font-style: italic;font-weight: bold;font-size: 11px;">${tour.khoihanh}</span>
            </div>
            </div>
            <br/>
            </div>
        </c:forEach>

        <div class="card-header color-input-field bg-warning text-white" style="text-align: center">Du lịch giá tốt
        </div>
        <c:forEach items="${requestScope.tourlist6}" var="tour" begin="0" end="5">
            <div class="col-12">
            <div class="card img-container hovereffect3" style="width: 100%; margin-top: 20px">
            <img style="min-height: 250px;max-height: 250px"
            src="../${tour.hinhshow}"
            alt="Card image cap" class="rgba-purple-strong">
            <div class="img-text-bottom-left overlay3">
            <h5 class="card-title">${tour.tenTour}</h5>
            <p class="card-text">${tour.giavenguoilon} VNĐ</p>
            <a href="/xemchitiettour?matour=${tour.maTourdb}" class="btn btn-primary">Xem chi
            tiết</a>
            </div>
            </div>
            <br/>
            </div>
        </c:forEach>
        </div>
        </div>