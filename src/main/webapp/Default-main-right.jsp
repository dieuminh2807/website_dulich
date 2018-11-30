<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<link rel="stylesheet" href="static/css/effect.css">

<div class="row">
    <div class="card">
        <div class="card-header bg-danger text-white">Tour du lịch mới</div>
        <div class="card-body">
            <div class="row">
                <c:forEach items="${requestScope.tourlist1}" var="tour" begin="0" end="2">
                    <div class="col-4">
                        <div class="card img-container hovereffect3" style="width: 100%">
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
                    </div>
                </c:forEach>
                <br/>
            </div>
            <div class="row">
                <c:forEach items="${requestScope.tourlist2}" var="tour" begin="0" end="3">
                    <div class="col-sm-6">
                        <div class="post-container">
                            <div class="post-thumb"><img style="max-width: 200px; min-height: 150px; max-height: 150px" src="../${tour.hinhshow}"/></div>
                            <div class="post-content">
                                <h3 class="post-title">${tour.tenTour}</h3>
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

<div class="row">
    <div class="card">
        <div class="card-header color-input-field bg-danger text-white">Tour du lịch hot</div>
        <div class="card-body">

            <div class="row">
                <div class="col-7">
                    <div class="row">
                        <c:forEach items="${requestScope.tourlist2}" var="tour" begin="0" end="5">
                            <div class="col-6" style="max-height: 250px; margin-bottom: 20px">
                                <div class="hovereffect2">
                                    <img class="img-responsive" src="${tour.hinhshow}" alt="Card image cap"
                                         style="max-height: 250px">
                                    <div class="overlay2">
                                        <h2>${tour.tenTour}</h2>
                                        <a class="info" href="/xemchitiettour?matour=${tour.maTourdb}">Xem chi tiết</a>
                                    </div>
                                </div>
                            </div>
                        </c:forEach>
                    </div>
                </div>
                <div class="col-5">
                    <div class="hovereffect">
                        <img class="img-responsive" src="static/image/hinhto.png" alt="">
                        <div class="overlay">
                            <h2>Về công ty</h2>
                            <p>
                                <a href="#">Xem giới thiệu</a>
                            </p>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>

<div class="row">
    <div class="card">
        <div class="card-header color-input-field bg-danger text-white">Tour du lich có khuyến mãi</div>
        <div class="card-body">
            <div class="row">
                <div class="col-8">
                    <div class="row">
                        <c:forEach items="${requestScope.tourlist3}" var="tour" begin="0" end="5">
                            <div class="col-4" style="max-height: 250px; margin-bottom: 20px;  min-height: 160px">
                                <div class="hovereffect1">
                                    <img class="img-responsive" src="${tour.hinhshow}" alt="Card image cap"
                                         style="max-height: 160px; min-height: 160px">
                                    <div class="overlay1">
                                        <h2>${tour.tenTour}</h2>
                                        <a class="info" href="/xemchitiettour?matour=${tour.maTourdb}">Xem chi tiết</a>
                                    </div>
                                </div>
                            </div>
                        </c:forEach>
                    </div>
                </div>


                <div class="col-4">

                </div>


            </div>
        </div>
    </div>
</div>