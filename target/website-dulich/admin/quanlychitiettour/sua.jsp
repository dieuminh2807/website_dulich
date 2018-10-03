<%@ page import="java.sql.PreparedStatement" %>
<%@ page import="utils.db.DatabaseUtil" %>
<%@ page import="java.sql.ResultSet" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/xml" prefix="x" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%
    int id = Integer.parseInt(request.getParameter("id"));
    String sql = "SELECT * FROM chitiettour where id = ?";

    PreparedStatement pstm = DatabaseUtil.getConnection().prepareStatement(sql);
    pstm.setInt(1, id);
    ResultSet rs = pstm.executeQuery();
    if (rs.next()) {
%>
<div class="Them">
    <div class="Title"><h3 id="tile_change">SỬA CHI TIẾT TOUR</h3></div>

    <form method="post" action="/admin/xulychitiettour" onsubmit="return validateChiTietTour();"><table class="tableThem">
            <input type="hidden" name="id" value="<%=id%>"/>
            <tr>
                <td class="Nhan"><label for="MaHang">Loại Tour:</label></td>
                <td width="280">
                    <select name="loaiTour" id="MaHang" class="txtnhap">
                        <option selected>Tour du lịch mới</option>
                        <option>Tour du lịch nhiều người đi</option>
                        <option>Tour du lịch có khuyến mãi</option>
                        <option>Các tour du lịch miền Bắc</option>
                        <option>Các tour du lịch miền Trung</option>
                        <option>Các tour du lịch miền Nam</option>
                    </select>
                </td>
            </tr>
            <tr>
                <td class="Nhan"><label for="MaDienThoai">Mã Tour:</label></td>
                <td class="Nhap">
                    <input name="maTour" id="MaDienThoai" class="txtnhap" type="text"
                           value="<%=rs.getString("matour")%>"/>
                </td>
            </tr>
            <tr>
                <td class="Nhan"><label for="TenDienThoai">Tên Tour:</label></td>
                <td class="Nhap"><input name="tenTour" id="TenDienThoai" class="txtnhap" type="text"
                                        value="<%=rs.getString("tentour")%>"/></td>
            </tr>
            <tr>
                <td class="Nhan">Giá Vé:</td>
                <td class="Nhap"><input name="giaVe" id="GiaNL" class="txtnhap" type="text"
                                        value="<%=rs.getString("giave")%>"/></td>
            </tr>
            <tr>
                <td class="Nhan">Thời Gian,Địa Điểm Đi:</td>
                <td class="Nhap"><input name="thoiDiem" id="Time" class="txtnhap" type="text"
                                        value="<%=rs.getString("diadiemdi")%>"/></td>
            </tr>
            <tr>
                <td class="Nhan">Địa Điểm Đến:</td>
                <td class="Nhap"><input name="Den" id="den" class="txtnhap" type="text"
                                        value="<%=rs.getString("diadiemden")%>"/></td>
            </tr>
            <tr>
                <td class="Nhan">Số Ngày Tour:</td>
                <td class="Nhap"><input name="soNgay" id="ManHinh" class="txtnhap" type="text"
                                        value="<%=rs.getString("songaytour")%>"/></td>
            </tr>
            <tr>
                <td class="Nhan"><input type="reset" class="txtnhap" value="Làm Lại"/></td>
                <input type="hidden" value="SUA" name="actionSubmit" id="">
                <td class="Nhap"><input type="Submit" class="txtnhap" value="Sửa" name="xulychitiettour"/></td>
            </tr>
        </table>
    </form>
</div>

<%}%>