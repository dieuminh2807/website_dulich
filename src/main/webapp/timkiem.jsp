<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<div class="row">
    <div class="card w-100">
        <div class="card-header bg-danger text-white">Kết quả tìm kiếm</div>
        <div class="card-body">
            <div class="row">
                <c:choose>
                    <c:when test="${requestScope.searchResult ne null}">
                        <c:forEach items="${requestScope.searchResult}" var="tour" begin="0" end="8">
                            <div class="col-4">
                                <div class="card h-100">
                                    <img class="card-img-top" style="min-height: 170px"
                                         src="static/image/hinhtourdulichmiennam/phuquoc/hinhshow.jpg"
                                         alt="Card image cap">
                                    <div class="card-body">
                                        <h5 class="card-title" style="min-height: 50px">${tour.tenTour}</h5>
                                        <p class="card-text">${tour.giave} VNĐ</p>
                                        <a href="/xemchitiettour?matour=${tour.maTourdb}" class="btn btn-primary">Xem chi
                                            tiết</a>
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
