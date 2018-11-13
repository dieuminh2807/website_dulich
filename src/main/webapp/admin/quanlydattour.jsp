<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<table class="table table-bordered" id="dataTable">
    <thead>
    <tr>
        <th>Mã đơn hàng</th>
        <th>Mã tour</th>
        <th>Số người lớn</th>
        <th>Tổng tiền</th>
        <th>Ngày khởi hành</th>
        <th>Ngày đặt</th>
        <th>Thanh toán</th>
        <th style="min-width: 110px">Quản lý</th>
    </tr>
    </thead>
    <tbody>
    <c:forEach items="${requestScope.listdattour}" var="dattour">
        <tr>
            <td>
                <button onclick="xxx('${dattour.madonhang}')" type="button"
                        class="btn btn-primary float-left mx-2">${dattour.madonhang}
                </button>
            </td>
            <td>${dattour.matour}</td>
            <td>${dattour.songuoilon}</td>
            <td>${dattour.tongtien}</td>
            <td>${dattour.ngaykhoihanh}</td>
            <td>${dattour.ngaydat}</td>
            <td>${dattour.thanhtoan}</td>
            <td>
                <button onclick="yyy('${dattour.madonhang}')" type="button"
                        class="btn btn-primary float-left mx-2">Sửa
                </button>
                <a href="/admin/quanlydattour?action=xoa&madonhang=${dattour.madonhang}">
                    <button type="button" class="btn btn-danger float-left">Xóa</button>
                </a>
            </td>

        </tr>
    </c:forEach>

    </tbody>
</table>