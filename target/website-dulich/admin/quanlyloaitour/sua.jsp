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
    String sql = "SELECT * FROM loaitour where id = ?";

    PreparedStatement pstm = DatabaseUtil.getConnection().prepareStatement(sql);
    pstm.setInt(1, id);
    ResultSet rs = pstm.executeQuery();
    if(rs.next()) {
        %>

<div class="Them">
    <div class="Title"><h3>Chức Năng Sửa Loại Tour</h3> </div>
    <form method="post" action="/admin/xulyloaitour" onsubmit="return validateThemLoaiTour();" ><table class="tableThem">
        <input type="hidden" name ="id" value="<%=id%>"/>
        <tr>
            <td class="Nhan"><label for="Themmaloai">Mã Loại Tour:</label></td>
            <td class="Nhap">
                <input name="maLoai" id="Themmaloai" class="txtnhap" type="text" value="<%=rs.getString("maloai")%>"/>
            </td>
        </tr>
        <tr>
            <td class="Nhan"><label for="Themtenloai">Tên Loại Tour:</label></td>
            <td class="Nhap"><input name="tenLoai" id="Themtenloai" class="txtnhap" type="text"
                                    value="<%=rs.getString("tenloai")%>" /></td>
        </tr>
        <tr>
            <td class="Nhan"><label for="Themthutu">Thứ Tự:</label></td>
            <td><input name="thuTu" id="Themthutu" class="txtnhap" type="text" value="<%=rs.getString("thutu")%>"/></td>
        </tr>
        <tr>
            <td class="Nhan"><label for="Themtrangthai">Trạng Thái:</label></td>
            <td class="Nhap">
                <select name="trangThai" id="Themtrangthai" class="txtnhap">
                    <c:choose>
                        <c:when test='<%=rs.getInt("trangthai") == 0 %>'>
                            <option value="1">Hiện</option>
                            <option value="0" selected >Ẩn</option>
                        </c:when>
                        <c:otherwise>
                            <option value="1" selected>Hiện</option>
                            <option value="0" >Ẩn</option>
                        </c:otherwise>
                    </c:choose>


                </select>
            </td>
        </tr>
        <tr>
            <td class="Nhan"><input type="reset" class="txtnhap" value="Làm Lại"  /></td>
            <input type="hidden" value="SUA" name="actionSubmit"/>
            <td class="Nhap"><input type="Submit" class="txtnhap" value="Sửa" name="xulyloaitour" /></td>
        </tr>
    </table>
    </form>
</div>

        <%
    }

%>

