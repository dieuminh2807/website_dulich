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
    <c:otherwise>
        <jsp:include page="Default-main-right.jsp"></jsp:include>
    </c:otherwise>
</c:choose>