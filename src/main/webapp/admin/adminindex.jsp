<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Admin page</title>
    <script src="/static/jQuery/jquery-3.3.1.min.js"></script>
    <script type="text/javascript" src="/static/datatable/datatables.min.js"></script>
    <script src="/static/jQuery/moment.js"></script>
    <script src="/static/js/xulydattour.js"></script>
    <script src="/static/bootstrap/js/bootstrap.js"></script>
    <script src="/static/bootstrap/js/bootstrap.bundle.js"></script>


    <script src="/admin/js/newScript.js"></script>

    <%--<script src="static/tempusdominus/js/tempusdominus-bootstrap-4.js"></script>--%>

    <link rel="stylesheet" href="/static/bootstrap/css/bootstrap.css">
    <link rel="stylesheet" href="/static/bootstrap/css/bootstrap-grid.css">
    <link rel="stylesheet" href="/static/bootstrap/css/bootstrap-reboot.css">
    <link rel="stylesheet" href="/static/css/newStyle.css">

    <link href="/static/font-awesome-4.7.0/css/font-awesome.min.css" rel="stylesheet">
    <link rel="stylesheet" type="text/css" href="/static/datatable/datatables.min.css"/>

    <script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/tempusdominus-bootstrap-4/5.0.0-alpha14/js/tempusdominus-bootstrap-4.min.js"></script>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/tempusdominus-bootstrap-4/5.0.0-alpha14/css/tempusdominus-bootstrap-4.min.css" />
    <link rel="stylesheet" href="/admin/css/newStyle.css">
</head>
<body>
    <c:choose>
        <c:when test="${sessionScope.username == null}">
            <jsp:include page="login.jsp"></jsp:include>
        </c:when>
        <c:otherwise>
            <jsp:include page="quanly.jsp"></jsp:include>
        </c:otherwise>
    </c:choose>
</body>
</html>
