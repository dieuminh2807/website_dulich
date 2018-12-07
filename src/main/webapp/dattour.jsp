<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<div class="border border-success">
    <div class="card-header bg-primary text-white">${requestScope.chiTietTourData.tenTour}</div>
    <br/>
    <div class="row">
        <div class="col-5"><img style="max-height: 210px;min-height: 210px;max-width: 280px;min-width: 280px;;margin: 0px 20px 20px 20px"
                                src="${requestScope.chiTietTourData.hinhshow}"
                                class="img-thumbnail"
                                alt="Cinque Terre"></div>
        <div class="col-7">
            <p>Giá tour: ${requestScope.chiTietTourData.giavenguoilon} VNĐ</p>
            <p>Thời gian: ${requestScope.chiTietTourData.thoigian}</p>
            <p>Khởi hành: ${requestScope.chiTietTourData.khoihanh}</p>
            <p>Phương tiện: ${requestScope.chiTietTourData.phuongtien}</p>
            <p>Khách sạn: ${requestScope.chiTietTourData.khachsan}</p>
        </div>
    </div>
    <span id="donGiaNguoiLon" class="d-none">${requestScope.chiTietTourData.giavenguoilon}</span>
    <span id="donGiaTreVua" class="d-none">${requestScope.chiTietTourData.giavetreem}</span>
</div>
<br/>
<form action="/xulydattour?matour=${requestScope.chiTietTourData.maTourdb}" method="post">

    <div class="alert alert-danger" style="display: none" id="maxSoNguoiAlert">
        <button type="button" class="close" data-dismiss="alert">x</button>
        <strong>Số người không được quá 50!</strong>
    </div>
    <c:if test="${requestScope.loidattour!=null}">
        <div class="alert alert-danger">
            <strong>Lỗi đặt tour! </strong>Vui lòng kiểm tra và nhập lại!
        </div>
    </c:if>
    <div class="card">
        <div class="card card-header bg-primary text-white">Giá tour cơ bản</div>
        <table class="table table-bordered">
            <thead>
            <th>
                Loại
            </th>
            <th>
                Số lượng
            </th>
            <th>
                Đơn giá
            </th>
            </thead>
            <tbody>
            <tr>
                <td>Người lớn (>=11 tuổi)</td>
                <td style="width:150px">
                    <div class="input-group" style="width:100%; max-height: 30px">
                  <span class="input-group-btn">
                      <button type="button" class="btn btn-danger btn-number" data-type="minus" data-field="soNguoiLon">
                        <span class="fa fa-minus"></span>
                      </button>
                  </span>
                        <input type="text" name="soNguoiLon" class="form-control songuoi-number text-center" value="1"
                               min="0" max="50" onchange="reCalculateTotalAmount();"/>
                        <span class="input-group-btn">
                      <button type="button" class="btn btn-success btn-number" data-type="plus" data-field="soNguoiLon">
                          <span class="fa fa-plus"></span>
                      </button>
                    </span>
                    </div>
                </td>
                <%--<td>1,690,000đ</td>--%>
                <td><fmt:formatNumber type="number" pattern="###,### VNĐ"
                                      value="${requestScope.chiTietTourData.giavenguoilon}"/></td>
            </tr>
            <tr>
                <td>Trẻ từ 5-10 tuổi</td>
                <td style="width:150px">
                    <div class="input-group" style="width:100%; max-height: 30px">
                  <span class="input-group-btn">
                      <button type="button" class="btn btn-danger btn-number" data-type="minus" data-field="soTreVua">
                        <span class="fa fa-minus"></span>
                      </button>
                  </span>
                        <input type="text" name="soTreVua" class="form-control songuoi-number text-center" value="0"
                               min="0"
                               max="50" onchange="reCalculateTotalAmount();"/>
                        <span class="input-group-btn">
                      <button type="button" class="btn btn-success btn-number" data-type="plus" data-field="soTreVua">
                          <span class="fa fa-plus"></span>
                      </button>
                    </span>
                    </div>
                </td>
                <%--<td>1,183,000đ</td>--%>
                <td>
                    <fmt:formatNumber type="number" pattern="###,### VNĐ"
                                      value="${requestScope.chiTietTourData.giavetreem}"/>
                </td>
            </tr>
            <tr>
                <td>Trẻ dưới 5 tuổi</td>
                <td style="width:150px">
                    <div class="input-group" style="width:100%; max-height: 30px">
                  <span class="input-group-btn">
                      <button type="button" class="btn btn-danger btn-number" data-type="minus" data-field="soTreNho">
                        <span class="fa fa-minus"></span>
                      </button>
                  </span>
                        <input type="text" name="soTreNho" class="form-control songuoi-number text-center" value="0"
                               min="0"
                               max="50" onchange="reCalculateTotalAmount();">
                        <span class="input-group-btn">
                      <button type="button" class="btn btn-success btn-number" data-type="plus" data-field="soTreNho">
                          <span class="fa fa-plus"></span>
                      </button>
                    </span>
                    </div>
                </td>
                <%--<td>0đ</td>--%>
                <td>Miễn phí</td>
            </tr>
            <tr>
                <td>Tổng</td>
                <td><span id="tongsonguoi"></span></td>
                <td>
                    <span id="tongtien"></span>
                </td>
            </tr>
            </tbody>
        </table>

        <div class="card card-header bg-primary text-white">Thông tin liên lạc</div>
        <table class="table table-bordered">
            <tbody>
            <tr>
                <td>Họ & Tên (*)
                    <input name="tenNguoiDat" type=text placeholder="Họ & Tên"
                           value="${requestScope.tennguoidatdanhap}">
                </td>
                <td>Địa chỉ
                    <input name="diaChiNguoiDat" type=text placeholder="Địa chỉ"
                           value="${requestScope.diachinguoidatdanhap}">
                </td>
            </tr>
            <tr>
                <td>Điện thoại (*)
                    <input name="sdtNguoiDat" type=text placeholder="Di động" value="${requestScope.sdtnguoidatdanhap}">
                </td>
                <td>Email (*)
                    <input name="emailNguoiDat" type=text placeholder="Email"
                           value="${requestScope.emailnguoidatdanhap}">
                </td>
            </tr>
            </tbody>
        </table>
        <br/>
        <div class="row">
            <div class="col-3">Định ngày khởi hành</div>
            <div class="col-4">
                <div class="form-group">
                    <div class="input-group date" id="ngayKhoiHanh" data-target-input="nearest">
                        <input name="ngayKhoiHanh" type="text" required
                               class="form-control datetimepicker-input"
                               data-target="#ngayKhoiHanh"/>
                        <div class="input-group-append" data-target="#ngayKhoiHanh" data-toggle="datetimepicker">
                            <div class="input-group-text"><i class="fa fa-calendar"></i></div>
                        </div>
                    </div>
                </div>
            </div>
            <script type="text/javascript">
                $(function () {
                    $('#ngayKhoiHanh').datetimepicker({
                        Default: false,
                        format: 'DD/MM/YYYY',
                        ignoreReadonly: true,
                        minDate: moment().add(3, 'days'),
                        maxDate: moment().add(30, 'days')
                    });
                });
            </script>
        </div>
        <div class="row">
            <div class="col-3">Ghi chú</div>
            <div class="col-9">
                <textarea name="ghiChu" placeholder="Nhập yêu cầu đặc biệt">${requestScope.ghichudanhap}</textarea>
            </div>
        </div>
        <br/>


        <div class="card card-header bg-danger text-white">Nhập danh sách đi
        </div>
        <br/>
        <div id="nguoidicung">
            <div class="row">
                <div class="col-4">Họ tên
                    <input name="hoTenNguoiDiCung" type=text style="width: 100%" placeholder="vd: Phạm Văn A"
                           value="${requestScope.hotennguoidicungdanhap}">
                </div>
                <div class="col-3">
                    <div class="form-group">Giới tính
                        <select class="form-control" name="gioiTinhNguoiDiCung"
                                value="${requestScope.gioitinhnguoidicungdanhap}">
                            <option value="NAM">Nam</option>
                            <option value="NU">Nữ</option>
                            <option value="KHAC">Khác</option>
                        </select>
                    </div>
                </div>
                <div class="col-4">
                    <div class="form-group">Độ tuổi
                        <select class="form-control" name="doTuoiNguoiDiCung"
                                value="${requestScope.dotuoinguoidicungdanhap}">
                            <option value="NGUOILON">Người lớn</option>
                            <option value="TREVUA">Trẻ 5-10 tuổi</option>
                            <option value="TRENHO">Trẻ < 5 tuổi</option>
                        </select>
                    </div>
                </div>
                <div class="col-1">
                    <br/>
                    <input class="btn btn-danger float-right" type="button" value="Xóa" onclick="XoaNguoiDiCung(this)"/>
                </div>
            </div>

        </div>
        <div class="row d-none" id="nguoidicunghide">
            <div class="col-4">Họ tên
                <input name="hoTenNguoiDiCung" type=text style="width: 100%" placeholder="vd: Phạm Văn A">
            </div>
            <div class="col-3">
                <div class="form-group">Giới tính
                    <select class="form-control" name="gioiTinhNguoiDiCung">
                        <option value="NAM">Nam</option>
                        <option value="NU">Nữ</option>
                        <option value="KHAC">Khác</option>
                    </select>
                </div>
            </div>
            <div class="col-4">
                <div class="form-group">Độ tuổi
                    <select class="form-control" name="doTuoiNguoiDiCung">
                        <option value="NGUOILON">Người lớn</option>
                        <option value="TREVUA">Trẻ vừa</option>
                        <option value="TRENHO">Trẻ nhỏ</option>
                    </select>
                </div>
            </div>
            <div class="col-1">
                <br/>
                <input class="btn btn-danger float-right" type="button" value="Xóa" onclick="XoaNguoiDiCung(this)"/>
            </div>
        </div>
        <div class="row">
            <div class="col-lg-12">
                <input class="btn btn-info float-right" type="button" value="Thêm" id="ThemNguoiDiCung"/>
            </div>
        </div>
        <br/>
        <div class="card card-header bg-primary text-white">Thông tin thanh toán</div>
        <br/>
        <div class="radio">
            <input id="tiemmat" name="cachThanhToan" type="radio" value="TIEN_MAT">Tiền mặt
        </div>
        <div class="radio">
            <input id="thanhtoanonline" name="cachThanhToan" type="radio" value="CHUYEN_KHOAN">Chuyển khoản
        </div>
        <div class="row" id="hienthithanhtoan">
            <div class="container">
                <div class="row">
                    <div class="col-sm-3"></div>
                    <div class="col-sm-6">
                        <article class="card">
                            <div class="card-body p-5">
                                <ul class="nav bg-light nav-pills rounded nav-fill mb-3" role="tablist">
                                    <li class="nav-item">
                                        <a class="nav-link active" data-toggle="pill" href="#nav-tab-bank">
                                            <i class="fa fa-university"></i>Quý khách chuyển tiền vào tài khoản sau</a>
                                    </li>
                                </ul>

                                <div class="tab-content">
                                    <div class="tab-pane fade show active" id="nav-tab-bank">
                                        <p>
                                            <dt>Lưu ý:</dt>
                                            Quý khách chuyển tiền sau khi nhận được email của công ty, vui lòng ghi rõ
                                            nội dung chuyển khoản: Họ tên_
                                            Số điện thoại_Tên tour đăng ký
                                        </p>
                                        <p>
                                            <dt><H3>Chi tiết tài khoản ngân hàng</H3></dt>
                                        </p>
                                        <dl class="param">
                                            <dt>Ngân hàng:</dt>
                                            <dd> THE WORLD BANK</dd>
                                        </dl>
                                        <dl class="param">
                                            <dt>Số tài khoản:</dt>
                                            <dd> 12345678912345</dd>
                                        </dl>
                                    </div> <!-- tab-pane.// -->
                                </div> <!-- tab-content .// -->
                            </div> <!-- card-body.// -->
                        </article> <!-- card.// -->
                    </div> <!-- col.// -->
                    <div class="col-sm-3"></div>
                </div> <!-- row.// -->
            </div>
            <!--container end.//-->
        </div>
    </div>
    <br/>
    <button class="btn btn-warning text-white" style="float:left" type="submit">ĐẶT TOUR</button>
</form>

<script type="text/javascript">
    $("#hienthithanhtoan").hide();
</script>
