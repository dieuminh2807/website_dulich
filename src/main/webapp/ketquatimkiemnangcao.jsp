<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<div class="row">
    <div class="card w-100">
        <div class="card-header bg-danger text-white">Kết quả tìm kiếm</div>
        <div class="card-body">
            <div class="row">
                <c:choose>
                    <c:when test="${requestScope.searchResultNC ne null}">
                        <c:forEach items="${requestScope.searchResultNC}" var="tour" begin="0" end="8">
                            <div class="col-4"
                                 style="min-height: 440px;max-height: 440px;margin-bottom: 20px;width: 345px">
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
                                        <a href="/xemchitiettour?matour=${tour.maTourdb}" class="btn btn-primary">Xem
                                            chi
                                            tiết</a></a>
                                    </div>
                                </div>
                            </div>
                        </c:forEach>
                    </c:when>
                    <c:otherwise>
                        <div class="col-12">
                            <div class="alert alert-success">
                                Không tìm thấy kết quả! <a href="/" class="alert-link">Bấm vào đây để về trang chủ</a>.
                            </div>
                        </div>
                    </c:otherwise>
                </c:choose>
            </div>
        </div>

    </div>
</div>
