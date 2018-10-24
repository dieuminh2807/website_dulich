<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<div class = "card-header bg-primary text-white">${requestScope.chiTietTourData.tenTour}</div>
<br/>
<div class="row">
    <div class="col-5"> <img src="${requestScope.chiTietTourData.hinhshow}" class="img-thumbnail" alt="Cinque Terre"> </div>
    <div class="col-7">
        <p>Giá tour: ${requestScope.chiTietTourData.giavenguoilon} VNĐ</p>
        <p>Thời gian: ${requestScope.chiTietTourData.thoigian}</p>
        <p>Khởi hành: ${requestScope.chiTietTourData.khoihanh}</p>
        <p>Phương tiện: ${requestScope.chiTietTourData.phuongtien}</p>
        <p>Khách sạn: ${requestScope.chiTietTourData.khachsan}</p>
        <a href="/kdattour?matour=${requestScope.chiTietTourData.maTourdb}" class="btn btn-warning text-white" style="float:right">Đặt ngay</a>
    </div>
</div>
<br/>
<div class="border border-success">
<div class="card-header bg-primary text-white">Lịch trình chi tiết</div>
<br/>
ĐÊM 1: TP.HCM – CAM RANH<br/>

<p>20h00: Xe và HDV VIETNAM TOURIST đón quý khách tại Tp.HCM .Khởi hành đi Cam Ranh. Quý khách nghỉ đêm trên xe . Xe dừng chân tại điểm dừng chân để quý khách nghỉ ngơi, vệ sinh cá nhân .

Các điểm đón :<br/>

Địa điểm 1: Văn phòng VIETNAM TOURIST - Số 12, Bàu Cát 8,P.11, Quận Tân Bình (Lúc 20h00).<br/>

Địa điểm 2: Nhà văn hóa thiếu nhi quận 10 – 139 Bắc Hải, Quận 10 (20h30)<br/>

Địa điểm 3: Nhà Văn Hóa Thanh Niên - số 6, Phạm Ngọc Thạch, Quận 1 ( 21h00)<br/>

Địa điểm 4: Ngã tư Thủ Đức, Xa Lộ Hà Nội (Lúc 21h30).<br/>
    Ngoài ra xe có thể đón quý khách dọc theo quốc lộ 1A đến ngã ba Dầu Dây<br/></p>
    </div>
<br/>



<div class = "card-header bg-primary text-white">Hình tham khảo</div>
<br/>
<div class="row equal-height">
    <c:forEach items="${requestScope.chiTietTourData.hinhcon}" var="hinh">
        <div class="col-md-6">
            <div class="thumbnail">
                <img src="${hinh}" class="img-thumbnail">
            </div>
        </div>
    </c:forEach>
</div>
<br/>
<div><a href="/kdattour?matour=${requestScope.chiTietTourData.maTourdb}" class="btn btn-warning text-white" style="float:right">Đặt ngay</a></div>
<br/>
<br/>

<p>Bình luận</p>
<div class="row">
    <div class="col-1"><img src="static/image/hinhtourdulichmiennam/phuquoc/hinhshow.jpg" class="img-rounded" style="height:40px; width: 40px"> </div>
    <div class="col-11">
        <div class="border border-success">
            <p>Diệu Minh đẹp gái lắm!</p>
        </div>
    </div>
</div>