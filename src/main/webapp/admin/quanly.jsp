<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<nav class="navbar navbar-expand-lg navbar-dark bg-primary">
    <a class="navbar-brand">Chào <strong> ${sessionScope.username}</strong></a>
    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="navbarSupportedContent">
        <ul class="navbar-nav mr-auto">
            <li class="nav-item <c:if test="${requestScope.main_type == 'quanlytour'}"> active </c:if>">
                <a class="nav-link" href="/admin/quanlytour">Quản lý tour
                </a>
            </li>
            <li class="nav-item <c:if test="${requestScope.main_type == 'quanlydattour'}"> active </c:if>">
                <a class="nav-link" href="/admin/quanlydattour">Quản lý đặt tour</a>
            </li>
            <li class="nav-item <c:if test="${requestScope.main_type == 'quanlythongtinkhachhang'}"> active </c:if>">
                <a class="nav-link" href="/admin/thongtinkhachhang">Thông tin khách hàng</a>
            </li>
            <li class="nav-item <c:if test="${requestScope.main_type == 'quanlythongkedoanhthu'}"> active </c:if>">
                <a class="nav-link" href="/admin/thongkedoanhthu">Thống kê doanh thu</a>
            </li>
        </ul>
    </div>
</nav>

<br/>
<c:choose>
    <c:when test="${requestScope.main_type == 'quanlytour'}">
        <jsp:include page="quanlytour.jsp"></jsp:include>
    </c:when>
</c:choose>

<script>
    $(document).ready( function () {
        $('#dataTable').DataTable({
            "pageLength": 5,
            "lengthMenu": [ 5, 10, 15, 20, 25, 30, 50, 100 ],
            "oLanguage": {
                "sLengthMenu": "Hiển thị _MENU_ dòng trong 1 trang",
                "sEmptyTable": "Không có dữ liệu",
                "sInfo": "Đang hiển thị _START_ đến _END_ trong tổng _TOTAL_ dòng",
                "sSearch": "Tìm kiếm: ",
                "sZeroRecords": "Không tìm thấy nội dung khớp với dữ liệu nhâp vào",
                "oPaginate": {
                    "sPrevious": "Trang trước",
                    "sNext": "Trang sau",
                    "sFirst": "Trang đầu",
                    "sLast": "Trang cuối"
                }
            }
        });
    } );
</script>