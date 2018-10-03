<div class="Them">
<div class="Title"><h3 id="tile_change">THÊM CHI TIẾT TOUR</h3> </div>
        
        <form method="post" action="/admin/xulychitiettour" onsubmit="return validateChiTietTour();" >
        <table class="tableThem">
          <tr>
            <td class="Nhan"><label for="MaHang">Loại Tour:</label></td>
            <td width="280">
            <select name="loaiTour" id="MaHang" class="txtnhap">
                <option selected >Tour du lich moi</option>
                <option>Tour du lich nhieu nguoi di</option>
                <option>Tour du lịch co khuyen mai</option>
                <option>Cac tour du lich mien Bac</option>
                <option>Cac tour du lich mien Trung</option>
                <option>Cac tour du lich mien Nam</option>
            </select>
            </td>
          </tr>
          <tr>
            <td class="Nhan"><label for="MaDienThoai">Mã Tour:</label></td>
            <td class="Nhap">
            <input name="maTour" id="MaDienThoai" class="txtnhap" type="text" value=""/>
            </td>
          </tr>
          <tr>
            <td class="Nhan"><label for="TenDienThoai">Tên Tour:</label></td>
            <td class="Nhap"><input name="tenTour" id="TenDienThoai" class="txtnhap" type="text" value=""/></td>
          </tr>
          <tr>
           <td class="Nhan">Giá Vé:</td>
           <td class="Nhap"><input name="giaVe" id="GiaNL" class="txtnhap" type="text" value=""/></td>
          </tr>
          <tr>
           <td class="Nhan">Thời Gian,Địa Điểm Đi:</td>
           <td class="Nhap"><input name="thoiDiem" id="Time" class="txtnhap" type="text" value=""/></td>
          </tr>
          <tr>
           <td class="Nhan">Địa Điểm Đến:</td>
           <td class="Nhap"><input name="Den" id="den" class="txtnhap" type="text" value=""/></td>
          </tr>
          <tr>
           <td class="Nhan">Số Ngày Tour:</td>
           <td class="Nhap"><input name="soNgay" id="ManHinh" class="txtnhap" type="text" value=""/></td>
          </tr>
          <tr>
  				<td class="Nhan"><input type="reset" class="txtnhap" value="Làm Lại"  /></td>
                <input type="hidden" value="THEM" name="actionSubmit"/>
                <td class="Nhap"><input type="Submit" class="txtnhap" value="Thêm" name="xulychitiettour" /></td>
  		  </tr>
        </table>
        </form>
</div>