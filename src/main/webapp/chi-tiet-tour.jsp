<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<div class="row">
    <div class="col-8 border border-success">
        <div class="card-header bg-primary text-white">${requestScope.chiTietTourData.tenTour}</div>
        <br/>
        <div class="row">
            <div class="col-5"><img style="max-height: 210px;min-height: 210px;max-width: 280px;min-width: 280px"
                                    src="${requestScope.chiTietTourData.hinhshow}"
                                    class="img-thumbnail"
                                    alt="Cinque Terre"></div>
            <div class="col-7">
                <p>Giá tour: ${requestScope.chiTietTourData.giavenguoilon} VNĐ</p>
                <p>Thời gian: ${requestScope.chiTietTourData.thoigian}</p>
                <p>Khởi hành: ${requestScope.chiTietTourData.khoihanh}</p>
                <p>Phương tiện: ${requestScope.chiTietTourData.phuongtien}</p>
                <p>Khách sạn: ${requestScope.chiTietTourData.khachsan}</p>
                <a href="/kdattour?matour=${requestScope.chiTietTourData.maTourdb}"
                   class="btn btn-warning text-white"
                   style="float:right">Đặt ngay</a>
            </div>
        </div>
        <br/>
        <div class="border border-success">
            <div class="card-header bg-danger text-white">Lịch trình chi tiết</div>
            <br/>

            <div style="margin-left: 20px">
                ĐÊM 1: TP.HCM – CAM RANH<br/>
                <p>20h00: Xe và HDV VIETNAM TOURIST đón quý khách tại Tp.HCM .Khởi hành đi Cam Ranh. Quý khách nghỉ đêm
                    trên
                    xe
                    . Xe
                    dừng chân tại điểm dừng chân để quý khách nghỉ ngơi, vệ sinh cá nhân .

                    Các điểm đón :<br/>

                    Địa điểm 1: Văn phòng VIETNAM TOURIST - Số 12, Bàu Cát 8,P.11, Quận Tân Bình (Lúc 20h00).<br/>

                    Địa điểm 2: Nhà văn hóa thiếu nhi quận 10 – 139 Bắc Hải, Quận 10 (20h30)<br/>

                    Địa điểm 3: Nhà Văn Hóa Thanh Niên - số 6, Phạm Ngọc Thạch, Quận 1 ( 21h00)<br/>

                    Địa điểm 4: Ngã tư Thủ Đức, Xa Lộ Hà Nội (Lúc 21h30).<br/>
                    Ngoài ra xe có thể đón quý khách dọc theo quốc lộ 1A đến ngã ba Dầu Dây<br/></p>
            </div>
        </div>
        <br/>


        <div class="card-header bg-success text-white">Hình tham khảo</div>
        <br/>
        <div class="row equal-height">
            <c:forEach items="${requestScope.chiTietTourData.hinhcon}" var="hinh">
                <div class="col-md-6" style="margin-bottom: 20px">
                    <div class="thumbnail">
                        <img src="${hinh}" class="img-thumbnail">
                    </div>
                </div>
            </c:forEach>
        </div>
        <br/>
        <div><a href="/kdattour?matour=${requestScope.chiTietTourData.maTourdb}" class="btn btn-warning text-white"
                style="float:right">Đặt ngay</a></div>
        <br/>
        <br/>

        <div class="fb-comments"
             data-href="http://dulich.j.layershift.co.uk/xemchitiettour?matour=${requestScope.chiTietTourData.maTourdb}"
             data-width="1110" data-numposts="5"></div>
    </div>

    <div class="col-4">

        <div class="card-header color-input-field bg-info text-white" style="text-align: center">Tin được quan tâm
        </div>
        <c:forEach items="${requestScope.tourlist5}" var="tour" begin="0" end="4">
            <div class="col-12">
                <div class="post-container">
                    <div class="post-thumb"><img style="max-width: 100px; min-height: 70px; max-height:
            70px; margin: 10px 10px 10px 10px" src="../${tour.hinhshow}"/></div>
                    <div>
                        <a class="post-title info" href="/xemchitiettour?matour=${tour.maTourdb}">
                            <h6>${tour.tenTour}</h6></a>
                        <i class="fa fa-clock-o"></i>
                        <span style="color: #0aa0fe;font-style: italic;font-weight: bold;font-size: 11px;">${tour.khoihanh}</span>
                    </div>
                </div>
                <br/>
            </div>
        </c:forEach>

        <div class="card-header color-input-field bg-warning text-white" style="text-align: center">Du lịch giá tốt
        </div>
        <c:forEach items="${requestScope.tourlist6}" var="tour" begin="0" end="2">
            <div class="col-12">
                <div class="card img-container hovereffect3" style="width: 100%; margin-top: 20px">
                    <img style="min-height: 250px;max-height: 250px"
                         src="../${tour.hinhshow}"
                         alt="Card image cap" class="rgba-purple-strong">
                    <div class="img-text-bottom-left overlay3">
                        <h5 class="card-title">${tour.tenTour}</h5>
                        <p class="card-text">${tour.giavenguoilon} VNĐ</p>
                        <a href="/xemchitiettour?matour=${tour.maTourdb}" class="btn btn-primary">Xem chi
                            tiết</a>
                    </div>
                </div>
                <br/>
            </div>
        </c:forEach>
    </div>

</div>