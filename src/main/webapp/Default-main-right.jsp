<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>


<div class="row">
    <div class="card">
        <div class="card-header bg-danger text-white">Tour du lịch mới</div>
        <div class="card-body">
            <div class="row">
                <c:forEach items="${requestScope.tourlist1}" var="tour" begin="0" end="2">
                    <div class="col-4">
                        <div class="card img-container" style="width: 100%">
                            <img style="min-height: 250px; width: 100%"
                                 src="${tour.hinhshow}"
                                 alt="Card image cap">
                            <div class="img-text-bottom-left">
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
<c:forEach items="${requestScope.tourlist1}" var="tour" begin="0" end="2">
                <div class="col-sm-6">
                    <div class="post-container">
                        <div class="post-thumb"><img style="max-width: 200px" src="${tour.hinhshow}"/></div>
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
                <c:forEach items="${requestScope.tourlist2}" var="tour" begin="0" end="2">
                    <div class="col-4">
                        <div class="card">
                            <img class="card-img-top" style="min-height: 250px"
                                 src="${tour.hinhshow}"
                                 alt="Card image cap">
                            <div class="card-body">
                                <h5 class="card-title" style="min-height: 50px">${tour.tenTour}</h5>
                                <p class="card-text">${tour.giavenguoilon} VNĐ</p>
                                <a href="/xemchitiettour?matour=${tour.maTourdb}" class="btn btn-primary">Xem chi
                                    tiết</a>
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
        <div class="card-header color-input-field bg-danger text-white">Tour du lich có khuyến mãi</div>
        <div class="card-body">

            <div class="row">
                <c:forEach items="${requestScope.tourlist3}" var="tour" begin="0" end="2">
                    <div class="col-4">
                        <div class="card">
                            <img class="card-img-top" style="min-height: 250px"
                                 src="${tour.hinhshow}"
                                 alt="Card image cap">
                            <div class="card-body">
                                <h5 class="card-title" style="min-height: 50px">${tour.tenTour}</h5>
                                <p class="card-text">${tour.giavenguoilon} VNĐ</p>
                                <a href="/xemchitiettour?matour=${tour.maTourdb}" class="btn btn-primary">Xem chi
                                    tiết</a>
                            </div>
                        </div>
                    </div>
                </c:forEach>
            </div>
        </div>
    </div>
</div>