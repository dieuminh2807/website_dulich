<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:choose>
    <c:when test="${requestScope.main_right == 'chitiettour'}">
        <jsp:include page="chi-tiet-tour.jsp"/>
    </c:when>
    <c:when test="${requestScope.main_right == 'dattour'}">
        <jsp:include page="dattour.jsp"/>
    </c:when>
    <c:when test="${requestScope.main_right == 'timkiem'}">
        <jsp:include page="timkiemnangcao.jsp"/>
        <jsp:include page="timkiem.jsp"/>
    </c:when>
    <c:when test="${requestScope.main_right == 'timkiemNC'}">
        <jsp:include page="ketquatimkiemnangcao.jsp"/>
    </c:when>
    <c:when test="${requestScope.main_right == 'danhsachtourtheoloai'}">
        <jsp:include page="danhsachtourtheoloai.jsp"/>
    </c:when>
    <c:when test="${requestScope.main_right == 'dattourthanhcong'}">
        <jsp:include page="dattourthanhcong.jsp"></jsp:include>
    </c:when>
    <c:when test="${requestScope.main_right == 'gioithieu'}">
        <jsp:include page="menu/gioithieu.jsp"></jsp:include>
    </c:when>
    <c:when test="${requestScope.main_right == 'camnangdulich'}">
        <jsp:include page="menu/camnangdulich.jsp"></jsp:include>
    </c:when>
    <c:when test="${requestScope.main_right == 'lienhe'}">
        <jsp:include page="menu/lienhe.jsp"></jsp:include>
    </c:when>
    <c:otherwise>
        <div class="fb-like" data-href="http://dulich.j.layershift.co.uk/" data-layout="standard" data-action="like"
             data-size="large" data-show-faces="true" data-share="true"></div>
        <script>(function(d, s, id) {
            var js, fjs = d.getElementsByTagName(s)[0];
            if (d.getElementById(id)) return;
            js = d.createElement(s); js.id = id;
            js.src = 'https://connect.facebook.net/vi_VN/sdk.js#xfbml=1&version=v3.2';
            fjs.parentNode.insertBefore(js, fjs);
        }(document, 'script', 'facebook-jssdk'));</script>
    </c:otherwise>
</c:choose>