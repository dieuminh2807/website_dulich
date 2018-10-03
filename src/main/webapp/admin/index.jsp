<%@ page contentType="text/html; charset=UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/xml" prefix="x" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <link rel="stylesheet" type="text/css" href="css/style.css"/>
    <script type="text/javascript" src="js/script.js"></script>
    <title>MH_admin page</title>
</head>

<body>
<c:if test="${requestScope.loidangnhap!=null}">
    <script type="text/javascript">alert('${requestScope.loidangnhap}')</script>
</c:if>
<div id="KhungToanBo">
    <div id="Main-Body">
        <c:choose>
            <c:when test="${sessionScope.userAdmin==null}">
                <jsp:include page="login.jsp"/>
            </c:when>
            <c:otherwise>
                <jsp:include page="main-top.jsp"/>

                <c:choose>
                    <c:when test='${param.display.equals("quanlyloaitour")}'>
                        <c:choose>
                            <c:when test='${param.action.equals("sua")}'>
                                <jsp:include page="quanlyloaitour/sua.jsp"/>
                            </c:when>
                            <c:otherwise>
                                <jsp:include page="quanlyloaitour/them.jsp"/>
                            </c:otherwise>
                        </c:choose>
                        <jsp:include page="quanlyloaitour/lietke.jsp"/>
                    </c:when>



                    <c:when test='${param.display.equals("quanlychitiettour")}'>
                        <c:choose>
                            <c:when test='${param.action.equals("sua")}'>
                                <jsp:include page="quanlychitiettour/sua.jsp"/>
                            </c:when>
                            <c:otherwise>
                                <jsp:include page="quanlychitiettour/them.jsp"/>
                            </c:otherwise>
                        </c:choose>
                        <jsp:include page="quanlychitiettour/lietke.jsp"/>
                    </c:when>


                </c:choose>

            </c:otherwise>
        </c:choose>
    </div>
</div>



</body>
</html>