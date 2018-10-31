<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<table class="table table-bordered" id="dataTable">
    <thead>
    <tr>
        <%--<th>Mã loại tour</th>--%>
        <th>Tên loại tour</th>
        <th>Mã tour</th>
        <th>Tên tour</th>
        <th>Giá vé người lớn</th>
        <th>Giá vé trẻ em</th>
        <th>Thời gian</th>
        <%--<th>Khởi hành</th>--%>
        <th>Phương tiện</th>
        <%--<th>Khách sạn</th>--%>
        <%--<th>Lịch trình</th>--%>
        <th style="min-width: 110px">Quản lý</th>
    </tr>
    </thead>
    <tbody>
    <c:forEach items="${requestScope.quanlytour}" var="tour">
        <tr>
                <%--<td>${tour.maloaiTour}</td>--%>
            <td>${tour.tenloaiTour}</td>
            <td>
                <button onclick="hienthichitiettour('${tour.maTourdb}')" type="button"
                        class="btn btn-primary float-left mx-2">${tour.maTourdb}
                </button>
            </td>
            <td>${tour.tenTour}</td>
            <td>${tour.giavenguoilon}</td>
            <td>${tour.giavetreem}</td>
            <td>${tour.thoigian}</td>
                <%--<td>${tour.khoihanh}</td>--%>
            <td>${tour.phuongtien}</td>
                <%--<td>${tour.khachsan}</td>--%>
                <%--<td>${tour.lichtrinh}</td>--%>
            <td>
                <button onclick="suachitiettour('${tour.maTourdb}')" type="button"
                        class="btn btn-primary float-left mx-2">Sửa
                </button>
                <a href="#">
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










