<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<div class="row">
    <div class="card">
        <div class="card-header bg-danger text-white">Tour du lịch mới</div>
        <div class="card-body">

            <div class="row">
                <c:forEach items="${requestScope.tourlist1}" var="tour" begin = "0" end = "2">
                <div class="col-4">
                    <div class="card">
                        <img class="card-img-top" style="min-height: 170px"
                             src="static/image/hinhtourdulichmiennam/phuquoc/hinhshow.jpg"
                             alt="Card image cap">
                        <div class="card-body">
                            <h5 class="card-title" style="min-height: 50px">${tour.tenTour}</h5>
                            <p class="card-text">${tour.giavenguoilon} VNĐ</p>
                            <a href="/xemchitiettour?matour=${tour.maTourdb}" class="btn btn-primary" >Xem chi tiết</a>
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
        <div class="card-header color-input-field bg-danger text-white">Tour du lich nhiều người đi</div>
        <div class="card-body">

            <div class="row">
                <c:forEach items="${requestScope.tourlist2}" var="tour" begin = "0" end = "2">
                    <div class="col-4">
                        <div class="card">
                            <img class="card-img-top" style="min-height: 170px"
                                 src="static/image/hinhtourdulichmiennam/phuquoc/hinhshow.jpg"
                                 alt="Card image cap">
                            <div class="card-body">
                                <h5 class="card-title" style="min-height: 50px">${tour.tenTour}</h5>
                                <p class="card-text">${tour.giavenguoilon} VNĐ</p>
                                <a href="/xemchitiettour?matour=${tour.maTourdb}" class="btn btn-primary" >Xem chi tiết</a>
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
                <c:forEach items="${requestScope.tourlist3}" var="tour" begin = "0" end = "2">
                    <div class="col-4">
                        <div class="card">
                            <img class="card-img-top" style="min-height: 170px"
                                 src="static/image/hinhtourdulichmiennam/phuquoc/hinhshow.jpg"
                                 alt="Card image cap">
                            <div class="card-body">
                                <h5 class="card-title" style="min-height: 50px">${tour.tenTour}</h5>
                                <p class="card-text">${tour.giavenguoilon} VNĐ</p>
                                <a href="/xemchitiettour?matour=${tour.maTourdb}" class="btn btn-primary" >Xem chi tiết</a>
                            </div>
                        </div>
                    </div>
                </c:forEach>
            </div>
        </div>
    </div>
</div>