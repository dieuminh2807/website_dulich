<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<nav class="navbar navbar-expand-lg navbar-dark bg-primary">
    <a class="navbar-brand">Chào <strong> ${sessionScope.username}</strong></a>
    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="navbarSupportedContent">
        <ul class="navbar-nav mr-auto">
            <li class="nav-item">
                <a class="nav-link" href="/admin/quanlytour">Quản lý tour
                </a>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="/admin/quanlydattour">Quản lý đặt tour</a>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="/admin/thongtinkhachhang">Thông tin khách hàng</a>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="/admin/thongkedoanhthu">Thống kê doanh thu</a>
            </li>
            <li class="nav-item">
               <b><a class="nav-link" href="/admin/xulydangxuat" style="color: #1c7430">Đăng xuất</a></b>
            </li>
        </ul>
    </div>
</nav>
<br/>
<c:choose>
    <c:when test="${requestScope.main_type == 'quanlytour'}">
        <jsp:include page="quanlytour.jsp"></jsp:include>
    </c:when>
    <c:when test="${requestScope.main_type == 'quanlydattour'}">
        <jsp:include page="quanlydattour.jsp"></jsp:include>
    </c:when>
    <c:when test="${requestScope.main_type == 'thongke'}">
        <jsp:include page="thongke.jsp"></jsp:include>
    </c:when>
    <c:when test="${requestScope.main_type == 'nguoidat'}">
        <jsp:include page="thongtinkhachhhang.jsp"></jsp:include>
    </c:when>
    <c:when test="${requestScope.main_type == 'formmail'}">
        <jsp:include page="guimail.jsp"></jsp:include>
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