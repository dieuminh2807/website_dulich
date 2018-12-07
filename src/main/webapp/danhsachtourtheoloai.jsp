<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<div class="row">
    <div class="card">
        <div class="card-header bg-danger text-white">${requestScope.tenloaitour.tenloaiTour}</div>
        <div class="card-body">

            <div class="row">
                <c:forEach items="${requestScope.TourListByMaLoai}" var="tour">
                    <div class="col-4" style="min-height: 440px;max-height: 440px;margin-bottom: 20px;width: 345px">
                        <div class="card">
                            <div class="post-thumb" style="width: 345px">
                                <div class="hovereffect1" style="width: 345px"><a
                                        href="/xemchitiettour?matour=${tour.maTourdb}">
                                    <img class="card-img-top"
                                         style=" min-height: 260px; max-height: 260px"
                                         src="../${tour.hinhshow}"/></a>
                                </div>
                            </div>
                            <div class="card-body"><a href="/xemchitiettour?matour=${tour.maTourdb}">
                                <h5 class="card-title" style="min-height: 50px">${tour.tenTour}</h5>
                                <p class="card-text">${tour.giavenguoilon} VNĐ</p>
                                <a href="/xemchitiettour?matour=${tour.maTourdb}" class="btn btn-primary">Xem chi
                                    tiết</a></a>
                            </div>
                        </div>
                    </div>
                </c:forEach>
            </div>
        </div>
    </div>
</div>
