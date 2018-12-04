<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:choose>
    <c:when test="${requestScope.main_right == 'chitiettour'}">
        <jsp:include page="chi-tiet-tour.jsp"/>
    </c:when>
    <c:otherwise>
        <div class="fb-like" data-href="http://dulich.j.layershift.co.uk/" data-layout="button_count" data-action="like"
             data-size="large" data-show-faces="true" data-share="true"></div>
    </c:otherwise>
</c:choose>

<script>(function (d, s, id) {
    var js, fjs = d.getElementsByTagName(s)[0];
    if (d.getElementById(id)) return;
    js = d.createElement(s);
    js.id = id;
    js.src = 'https://connect.facebook.net/vi_VN/sdk.js#xfbml=1&version=v3.2';
    fjs.parentNode.insertBefore(js, fjs);
}(document, 'script', 'facebook-jssdk'));</script>