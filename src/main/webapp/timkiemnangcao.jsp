<%@ page contentType="text/html; charset=UTF-8" %>
<div class="s-form-search" id="timkiemnangcaoForm" >
    <form action="/ktimkiem?action=nangcao" method="post">
        <div class="row">
            <div class="col-3">
                <label>Điểm đến</label>
                <div>
                    <select class="form-control" name="diemdenSearch">
                        <option >--Tất cả--</option>
                        <option value="Vũng Tàu">Vũng Tàu</option>
                        <option value="Phú Quốc">Phú Quốc</option>
                        <option value="Đồng Nai">Đồng Nai</option>
                    </select>
                </div>
            </div>
            <div class="col-3">
                <label>Phương tiện</label>
                <div>
                    <select class="form-control" name="phuongtienSearch">
                        <option>--Tất cả--</option>
                        <option value="Xe khách">Xe khách</option>
                        <option value="Máy bay">Máy bay</option>
                    </select>
                </div>
            </div>
            <div class="col-4">
                <label>Giá</label>
                <div>
                    <select class="form-control" name="giaSearch">
                        <option>--Tất cả--</option>
                        <option value="NHOHON3TR">Dưới 3 triệu</option>
                        <option value="TU3DEN7">3-7 triệu</option>
                        <option value="TU7DEN12">7-12 triệu</option>
                        <option value="TREN12">Trên 12 triệu</option>
                    </select>
                </div>
            </div>
            <div class="col-2">
                <label>Tìm kiếm</label>
                <button class="btn btn-primary" type="submit" style="width: 100%;">Tìm kiếm</button>
            </div>
        </div>
    </form>
</div>


