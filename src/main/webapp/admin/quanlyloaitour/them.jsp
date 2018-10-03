<div class="Them">
<div class="Title"><h3>Chức Năng Thêm Loại Tour</h3> </div>
<form method="post" action="/admin/xulyloaitour" onsubmit="return validateThemLoaiTour();" >
  <table class="tableThem">
  <tr>
    <td class="Nhan"><label for="Themmaloai">Mã Loại Tour:</label></td>
    <td class="Nhap">
    <input name="maLoai" id="Themmaloai" class="txtnhap" type="text"/>
    </td>
  </tr>
  <tr>
    <td class="Nhan"><label for="Themtenloai">Tên Loại Tour:</label></td>
    <td class="Nhap"><input name="tenLoai" id="Themtenloai" class="txtnhap" type="text"  /></td>
  </tr>
  <tr>
    <td class="Nhan"><label for="Themthutu">Thứ Tự:</label></td>
    <td><input name="thuTu" id="Themthutu" class="txtnhap" type="text"/></td>
  </tr>
  <tr>
    <td class="Nhan"><label for="Themtrangthai">Trạng Thái:</label></td>
    <td class="Nhap">
    	<select name="trangThai" id="Themtrangthai" class="txtnhap">
        	<option value="1">Hiện</option>
         	<option value="0">Ẩn</option>
        </select>
    </td>
  </tr>
  <tr>
  	<td class="Nhan"><input type="reset" class="txtnhap" value="Làm Lại"  /></td>
    <input type="hidden" value="THEM" name="actionSubmit"/>
    <td class="Nhap"><input type="Submit" class="txtnhap" value="Thêm" name="xulyloaitour" /></td>
  </tr>
</table>
</form>
</div>