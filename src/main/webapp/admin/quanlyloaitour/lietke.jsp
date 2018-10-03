<%@ page import="java.sql.PreparedStatement" %>
<%@ page import="utils.db.DatabaseUtil" %>
<%@ page import="java.sql.ResultSet" %>
<div class="Lietke">
    <div class="Title"><h3>Danh Sách Loại Tour</h3></div>
    <table class="tableLietke" border="1">
        <tr>
            <td class="Cot2"><strong>Mã Loại Tour</strong></td>
            <td class="Cot3"><strong>Tên Loại Tour</strong></td>
            <td class="Cot1"><strong>Thứ tự</strong></td>
            <td class="Cot5"><strong>Trạng Thái</strong></td>
            <td colspan="2" class="Cotcuoi">
                <div align="center"><strong>Quản Trị</strong></div>
            </td>
        </tr>
        <%
            String loaitour = "SELECT * FROM loaitour";
            PreparedStatement pt = DatabaseUtil.getConnection().prepareStatement(loaitour);
            ResultSet rs = pt.executeQuery();//thực hiện lệnh và lưu vào biến kết quả
            while (rs.next()) {%>
        <tr>
            <td><%=rs.getString("maloai")%>
            </td>
            <td><%=rs.getString("tenloai")%>
            </td>
            <td><%=rs.getString("thutu")%>
            </td>
            <td><%=rs.getString("trangthai")%>
            </td>
            <td><a href="index.jsp?display=quanlyloaitour&action=sua&id=<%=rs.getString("id")%>">Sửa</a></td>
            <td><a href="/admin/xulyloaitour?actionSubmit=XOA&id=<%=rs.getString("id")%>">Xóa</a></td>
        </tr>
        <%} %>
    </table>
</div>