<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<button onclick="themtour()" type="button"
        class="btn btn-warning float-left mx-2">Thêm khách hàng
</button>
<table class="table table-bordered" id="dataTable">
    <thead>
    <tr>
        <th>Mã đơn hàng</th>
        <th>Họ tên</th>
        <th>Số điện thoại</th>
        <th>Địa chỉ</th>
        <th>Email</th>
        <th style="min-width: 110px">Quản lý</th>
    </tr>
    </thead>
    <tbody>
    <c:forEach items="${requestScope.nguoidatList}" var="nguoidat">
        <tr>
            <td>${nguoidat.madonhang}</td>
            <td>
                <button onclick="hienthichitiettour('${nguoidat.hoten}')" type="button"
                        class="btn btn-primary float-left mx-2">${nguoidat.hoten}
                </button>
            </td>
            <td>${nguoidat.sodienthoai}</td>
            <td>${nguoidat.diachi}</td>
            <td>${nguoidat.email}</td>
            <td>
                <button onclick="suachitiettour('${nguoidat.madonhang}')" type="button"
                        class="btn btn-primary float-left mx-2">Sửa
                </button>
                <a href="/admin/quanlytour?action=xoa&matour=${nguoidat.madonhang}">
                    <button type="button" class="btn btn-danger float-left">Xóa</button>
                </a>
            </td>

        </tr>
    </c:forEach>

    </tbody>
</table>


<div class="modal fade" id="hienthichitiettourModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel"
     aria-hidden="true">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" id="exampleModalLabel0">Thông tin chi tiết tour</h5>
            </div>
            <div class="modal-body">
                <div class="input-group input-group-sm mb-3">
                    <div class="input-group-prepend">
                        <span class="input-group-text">Tên tour</span>
                    </div>
                    <input type="text" id="xemtentour0" readonly class="form-control"
                           aria-label="Small" aria-describedby="inputGroup-sizing-sm">
                </div>
                <div class="input-group input-group-sm mb-3">
                    <div class="input-group-prepend">
                        <span class="input-group-text">Mã loại tour</span>
                    </div>
                    <input type="text" id="maloaitour0" readonly class="form-control"
                           aria-label="Small" aria-describedby="inputGroup-sizing-sm">
                </div>
                <div class="input-group input-group-sm mb-3">
                    <div class="input-group-prepend">
                        <span class="input-group-text">Tên loại tour</span>
                    </div>
                    <input type="text" id="tenloaitour0" readonly class="form-control" aria-label="Small"
                           aria-describedby="inputGroup-sizing-sm">
                </div>
                <div class="input-group input-group-sm mb-3">
                    <div class="input-group-prepend">
                        <span class="input-group-text">Mã tour</span>
                    </div>
                    <input type="text" id="matour0" readonly class="form-control" aria-label="Small"
                           aria-describedby="inputGroup-sizing-sm">
                </div>
                <div class="input-group input-group-sm mb-3">
                    <div class="input-group-prepend">
                        <span class="input-group-text">Giá vé người lớn</span>
                    </div>
                    <input type="text" id="giavenguoilon0" readonly class="form-control" aria-label="Small"
                           aria-describedby="inputGroup-sizing-sm">
                </div>
                <div class="input-group input-group-sm mb-3">
                    <div class="input-group-prepend">
                        <span class="input-group-text">Giá vé trẻ em</span>
                    </div>
                    <input type="text" id="giavetreem0" readonly class="form-control" aria-label="Small"
                           aria-describedby="inputGroup-sizing-sm">
                </div>
                <div class="input-group input-group-sm mb-3">
                    <div class="input-group-prepend">
                        <span class="input-group-text">Thời gian</span>
                    </div>
                    <input type="text" id="thoigian0" readonly class="form-control" aria-label="Small"
                           aria-describedby="inputGroup-sizing-sm">
                </div>
                <div class="input-group input-group-sm mb-3">
                    <div class="input-group-prepend">
                        <span class="input-group-text">Khởi hành</span>
                    </div>
                    <input type="text" id="khoihanh0" readonly class="form-control" aria-label="Small"
                           aria-describedby="inputGroup-sizing-sm">
                </div>
                <div class="input-group input-group-sm mb-3">
                    <div class="input-group-prepend">
                        <span class="input-group-text">Phương tiện</span>
                    </div>
                    <input type="text" id="phuongtien0" readonly class="form-control" aria-label="Small"
                           aria-describedby="inputGroup-sizing-sm">
                </div>
                <div class="input-group input-group-sm mb-3">
                    <div class="input-group-prepend">
                        <span class="input-group-text">Khách sạn</span>
                    </div>
                    <input type="text" id="khachsan0" readonly class="form-control" aria-label="Small"
                           aria-describedby="inputGroup-sizing-sm">
                </div>
                <div class="input-group input-group-sm mb-3">
                    <div class="input-group-prepend">
                        <span class="input-group-text">Lịch trình</span>
                    </div>
                    <input type="text" id="lichtrinh0" readonly class="form-control" aria-label="Small"
                           aria-describedby="inputGroup-sizing-sm">
                </div>
                <div class="input-group input-group-sm mb-3">
                    <div class="input-group-prepend">
                        <span class="input-group-text">Hình show</span>
                    </div>
                    <input type="text" id="hinhshow0" readonly class="form-control" aria-label="Small"
                           aria-describedby="inputGroup-sizing-sm">
                </div>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-secondary" data-dismiss="modal">Đóng</button>
            </div>
        </div>
    </div>
</div>



<div class="modal fade" id="hienthichitiettourdesuaModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel"
     aria-hidden="true">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" id="exampleModalLabel">Thông tin chi tiết tour (có thể sữa)</h5>
            </div>
            <form id="formSua" onsubmit="return false">
                <input type="hidden" name="action" value="LuuSua">
                <div class="modal-body">
                    <div class="input-group input-group-sm mb-3">
                        <div class="input-group-prepend">
                            <span class="input-group-text">Tên tour</span>
                        </div>
                        <input type="text" id="xemtentour" name="tentour" class="form-control"
                               aria-label="Small" aria-describedby="inputGroup-sizing-sm">
                    </div>
                    <div class="input-group input-group-sm mb-3">
                        <div class="input-group-prepend">
                            <span class="input-group-text">Mã loại tour</span>
                        </div>
                        <input type="text" id="maloaitour" name="maloaitour" class="form-control"
                               aria-label="Small" aria-describedby="inputGroup-sizing-sm">
                    </div>
                    <div class="input-group input-group-sm mb-3">
                        <div class="input-group-prepend">
                            <span class="input-group-text">Tên loại tour</span>
                        </div>
                        <input type="text" id="tenloaitour" name="tenloaitour" class="form-control" aria-label="Small"
                               aria-describedby="inputGroup-sizing-sm">
                    </div>
                    <div class="input-group input-group-sm mb-3">
                        <div class="input-group-prepend">
                            <span class="input-group-text">Mã tour</span>
                        </div>
                        <input type="text" id="matour" readonly name="matour" class="form-control" aria-label="Small"
                               aria-describedby="inputGroup-sizing-sm">
                    </div>
                    <div class="input-group input-group-sm mb-3">
                        <div class="input-group-prepend">
                            <span class="input-group-text">Giá vé người lớn</span>
                        </div>
                        <input type="text" id="giavenguoilon" name="giavenguoilon" class="form-control" aria-label="Small"
                               aria-describedby="inputGroup-sizing-sm">
                    </div>
                    <div class="input-group input-group-sm mb-3">
                        <div class="input-group-prepend">
                            <span class="input-group-text">Giá vé trẻ em</span>
                        </div>
                        <input type="text" id="giavetreem" name="giavetreem" class="form-control" aria-label="Small"
                               aria-describedby="inputGroup-sizing-sm">
                    </div>
                    <div class="input-group input-group-sm mb-3">
                        <div class="input-group-prepend">
                            <span class="input-group-text">Thời gian</span>
                        </div>
                        <input type="text" id="thoigian" name="thoigian" class="form-control" aria-label="Small"
                               aria-describedby="inputGroup-sizing-sm">
                    </div>
                    <div class="input-group input-group-sm mb-3">
                        <div class="input-group-prepend">
                            <span class="input-group-text">Khởi hành</span>
                        </div>
                        <input type="text" id="khoihanh" name="khoihanh" class="form-control" aria-label="Small"
                               aria-describedby="inputGroup-sizing-sm">
                    </div>
                    <div class="input-group input-group-sm mb-3">
                        <div class="input-group-prepend">
                            <span class="input-group-text">Phương tiện</span>
                        </div>
                        <input type="text" id="phuongtien" name="phuongtien" class="form-control" aria-label="Small"
                               aria-describedby="inputGroup-sizing-sm">
                    </div>
                    <div class="input-group input-group-sm mb-3">
                        <div class="input-group-prepend">
                            <span class="input-group-text">Khách sạn</span>
                        </div>
                        <input type="text" id="khachsan" name="khachsan" class="form-control" aria-label="Small"
                               aria-describedby="inputGroup-sizing-sm">
                    </div>
                    <div class="input-group input-group-sm mb-3">
                        <div class="input-group-prepend">
                            <span class="input-group-text">Lịch trình</span>
                        </div>
                        <input type="text" id="lichtrinh" name="lichtrinh" class="form-control" aria-label="Small"
                               aria-describedby="inputGroup-sizing-sm">
                    </div>
                    <div class="input-group input-group-sm mb-3">
                        <div class="input-group-prepend">
                            <span class="input-group-text">Hình show</span>
                        </div>
                        <input type="text" id="hinhshow" name="hinhshow" class="form-control" aria-label="Small"
                               aria-describedby="inputGroup-sizing-sm">
                    </div>
                </div>
                <div class="modal-footer">
                    <button onclick="luusuachitiettour()" type="button" class="btn btn-secondary" data-dismiss="modal">Lưu</button>
                </div>
            </form>
        </div>
    </div>
</div>

<div class="modal fade" id="hienthichitiettourdethemModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel"
     aria-hidden="true">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" id="exampleModalLabel1">Thêm tour</h5>
            </div>
            <form id="formThem" onsubmit="return false">
                <input type="hidden" name="action" value="ThemTour">
                <div class="modal-body">
                    <div class="input-group input-group-sm mb-3">
                        <div class="input-group-prepend">
                            <span class="input-group-text">Tên tour</span>
                        </div>
                        <input type="text" id="xemtentour1" name="tentour" class="form-control"
                               aria-label="Small" aria-describedby="inputGroup-sizing-sm">
                    </div>
                    <div class="input-group input-group-sm mb-3">
                        <div class="input-group-prepend">
                            <span class="input-group-text">Mã loại tour</span>
                        </div>
                        <input type="text" id="maloaitour1" name="maloaitour" class="form-control"
                               aria-label="Small" aria-describedby="inputGroup-sizing-sm">
                    </div>
                    <div class="input-group input-group-sm mb-3">
                        <div class="input-group-prepend">
                            <span class="input-group-text">Tên loại tour</span>
                        </div>
                        <input type="text" id="tenloaitour1" name="tenloaitour" class="form-control" aria-label="Small"
                               aria-describedby="inputGroup-sizing-sm">
                    </div>
                    <div class="input-group input-group-sm mb-3">
                        <div class="input-group-prepend">
                            <span class="input-group-text">Mã tour</span>
                        </div>
                        <input type="text" id="matour1" name="matour" class="form-control" aria-label="Small"
                               aria-describedby="inputGroup-sizing-sm">
                    </div>
                    <div class="input-group input-group-sm mb-3">
                        <div class="input-group-prepend">
                            <span class="input-group-text">Giá vé người lớn</span>
                        </div>
                        <input type="text" id="giavenguoilon1" name="giavenguoilon" class="form-control" aria-label="Small"
                               aria-describedby="inputGroup-sizing-sm">
                    </div>
                    <div class="input-group input-group-sm mb-3">
                        <div class="input-group-prepend">
                            <span class="input-group-text">Giá vé trẻ em</span>
                        </div>
                        <input type="text" id="giavetreem1" name="giavetreem" class="form-control" aria-label="Small"
                               aria-describedby="inputGroup-sizing-sm">
                    </div>
                    <div class="input-group input-group-sm mb-3">
                        <div class="input-group-prepend">
                            <span class="input-group-text">Thời gian</span>
                        </div>
                        <input type="text" id="thoigian1" name="thoigian" class="form-control" aria-label="Small"
                               aria-describedby="inputGroup-sizing-sm">
                    </div>
                    <div class="input-group input-group-sm mb-3">
                        <div class="input-group-prepend">
                            <span class="input-group-text">Khởi hành</span>
                        </div>
                        <input type="text" id="khoihanh1" name="khoihanh" class="form-control" aria-label="Small"
                               aria-describedby="inputGroup-sizing-sm">
                    </div>
                    <div class="input-group input-group-sm mb-3">
                        <div class="input-group-prepend">
                            <span class="input-group-text">Phương tiện</span>
                        </div>
                        <input type="text" id="phuongtien1" name="phuongtien" class="form-control" aria-label="Small"
                               aria-describedby="inputGroup-sizing-sm">
                    </div>
                    <div class="input-group input-group-sm mb-3">
                        <div class="input-group-prepend">
                            <span class="input-group-text">Khách sạn</span>
                        </div>
                        <input type="text" id="khachsan1" name="khachsan" class="form-control" aria-label="Small"
                               aria-describedby="inputGroup-sizing-sm">
                    </div>
                    <div class="input-group input-group-sm mb-3">
                        <div class="input-group-prepend">
                            <span class="input-group-text">Lịch trình</span>
                        </div>
                        <input type="text" id="lichtrinh1" name="lichtrinh" class="form-control" aria-label="Small"
                               aria-describedby="inputGroup-sizing-sm">
                    </div>
                    <div class="input-group input-group-sm mb-3">
                        <div class="input-group-prepend">
                            <span class="input-group-text">Hình show</span>
                        </div>
                        <input type="text" id="hinhshow1" name="hinhshow" class="form-control" aria-label="Small"
                               aria-describedby="inputGroup-sizing-sm">
                    </div>
                </div>
                <div class="modal-footer">
                    <button onclick="luuthemtour()" type="button" class="btn btn-secondary" data-dismiss="modal">Lưu</button>
                </div>
            </form>
        </div>
    </div>
</div>










