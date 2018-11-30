    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
        <link rel="stylesheet" href="static/css/effect.css">

        <div class="row">
        <div class="card">
        <div class="card-header bg-danger text-white">Cẩm nang du lịch</div>
        <div class="card-body">
        <div class="row">
        <div class="col-8">
        <c:forEach items="${requestScope.tourlist3}" var="tour">
            <div class="col-12">
            <div class="post-container">
            <div class="post-thumb"><img style="max-width: 200px; min-height: 150px; max-height: 150px"
            src="../${tour.hinhshow}"/></div>
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

        <div class="col-4">
        <c:forEach items="${requestScope.tourlist2}" var="tour" begin="0" end="3">
            <div class="col-12">
            <div class="post-container">
            <div class="post-thumb"><img style="max-width: 200px; min-height: 150px; max-height: 150px"
            src="../${tour.hinhshow}"/></div>
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
        </div>
