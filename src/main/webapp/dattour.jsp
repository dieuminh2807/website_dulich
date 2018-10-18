<div class = "card-header bg-primary text-white">${requestScope.chiTietTourData.tenTour}</div>
<br/>
<div class="row">
    <div class="col-5"> <img src="static/image/hinhtourdulichmiennam/phuquoc/hinhshow.jpg" class="img-thumbnail" alt="Cinque Terre"> </div>
    <div class="col-7">
        <span class="glyphicons-one-day"></span><p>Giá tour: ${requestScope.chiTietTourData.giave} VNĐ</p>
        <span class="glyphicons-one-day"></span><p>Thời gian: ${requestScope.chiTietTourData.thoigian}</p>
        <span class="glyphicons-one-day"></span><p>Khởi hành: ${requestScope.chiTietTourData.khoihanh}</p>
        <span class="glyphicons-one-day"></span><p>Phương tiện: ${requestScope.chiTietTourData.phuongtien}</p>
        <span class="glyphicons-one-day"></span><p>Khách sạn: ${requestScope.chiTietTourData.khachsan}</p>
    </div>
</div>
<br/>
<div class="card card-header bg-primary text-white">Giá tour cơ bản</div>
<table class="table table-bordered">
    <tbody>
    <tr>
        <td>Giá người lớn (>=11 tuổi)</td>
        <td>1,690,000đ </td>
    </tr>
    <tr>
        <td>Trẻ từ 5-10 tuổi</td>
        <td>1,183,000đ </td>
    </tr>
    <tr>
        <td>Trẻ dưới 5 tuổi</td>
        <td>0đ </td>
    </tr>
    <tr>
        <td>Tổng tiền</td>
        <td> </td>
    </tr>
    </tbody>
</table>



<div class="card card-header bg-primary text-white">Thông tin liên lạc</div>
<br/>
<div class = "row">
    <div class = "col-3">Định ngày khởi hành</div>
    <div class = "col-9" >
        <input type = text placeholder="VD:Lấy ngày hiện tại?">
    </div>
</div>
<br/>
<table class="table table-bordered">
<tbody>
<tr>
    <td>Họ & Tên (*)
        <input type = text placeholder="Họ & Tên">
    </td>
    <td>Địa chỉ
        <input type = text placeholder="Địa chỉ">
    </td>
</tr>
<tr>
    <td>Di động (*)
        <input type = text placeholder="Di động">
    </td>
    <td>Email (*)
        <input type = text placeholder="Email">
    </td>
</tr>
</tbody>
</table>
<br>
<div class = "row">
    <div class = "col-3">Ghi chú</div>
    <div class = "col-9" >
        <input type = text placeholder="Nhập yêu cầu đặc biệt">
    </div>
</div>
<br/>


<div class="card card-header bg-danger text-white">Nhập danh sách đi (Bao gồm: Họ tên, Ngày sinh, Địa chỉ, Giới tính, Độ tuổi, Đặt phòng)
</div>
<br/>
<div class = "row">
    <div class = "col-4">
        <input type = text style="width: 100%" placeholder="vd: Phạm Văn A">
    </div>
    <div class = "col-4">
        <input type = text style="width: 100%" placeholder="vd: 1-1-1990">
    </div>
    <div class = "col-4">
        <input type = text style="width: 100%" placeholder="vd: 02 Nguyễn Du">
    </div>
</div>
<br/>
<div class = "row">
    <div class = "col-4">
        <div class="form-group">
            <select class="form-control">
                <option>Nam</option>
                <option>Nữ</option>
                <option>Khác</option>
            </select>
        </div>
    </div>
    <div class = "col-4">
        <div class="form-group">
            <select class="form-control">
                <option>Người lớn</option>
                <option>Trẻ em</option>
            </select>
        </div>
    </div>
    <div class = "col-4">
        <div class="form-group">
            <select class="form-control">
                <option>Không</option>
                <option>Có</option>
            </select>
        </div>
    </div>
</div>
<br/>


<div class="card card-header bg-primary text-white">Thông tin thanh toán</div>
<br/>
<div class="radio">
    <input type="radio" name="optradio" checked>Tiền mặt
</div>
<div class="radio">
    <input type="radio" name="optradio">Chuyển khoản
</div>
<br/>
<div class="card card-header bg-primary text-white">Điều khoản</div>
<br/>
<div class = "checkbox-inline" ><input type="checkbox" checked>Tôi đồng ý với các điều khoản trên</div>
<br/>
<div class="btn btn-warning text-white" style="float:left">ĐẶT TOUR</div>
