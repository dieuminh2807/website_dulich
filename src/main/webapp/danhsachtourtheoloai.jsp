<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<div class="row">
    <div class="card">
        <div class="card-header bg-danger text-white">${requestScope.tenloaitour.tenloaiTour}</div>
        <div class="card-body">

            <div class="row">
                <c:forEach items="${requestScope.TourListByMaLoai}" var="tour">
                    <div class="col-4">
                        <div class="card">
                            <img class="card-img-top" style="min-height: 170px"
                                 src="${tour.hinhshow}"
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
