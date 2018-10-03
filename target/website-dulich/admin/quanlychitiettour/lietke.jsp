<%@ page import="java.sql.PreparedStatement" %>
<%@ page import="utils.db.DatabaseUtil" %>
<%@ page import="java.sql.ResultSet" %>
<div class="Lietke">
	
    <div class="Title"><h3>Danh Sách Tour</h3> </div>
    <table class="tableLietke" border="1">
      <tr>
        <td class="Cot1"><strong>Loại Tour</strong></td>
        <td class="Cot2"><strong>Mã Tour</strong></td>
        <td class="Cot3"><strong>Tên Tour</strong></td>
        <td class="Cot4"><strong>Giá Vé</strong></td>
        <td class="Cot5"><strong>Địa Điểm Đi</strong></td>
        <td class="Cot6"><strong>Địa Điểm Đến</strong></td>
        <td class="Cot7"><strong>Số Ngày Tour</strong></td>
        <td colspan="2" class="Cotcuoi"><strong>Quản Trị</strong></td>
        </tr>

        <%
            String chitiettour = "SELECT * FROM chitiettour";
            PreparedStatement pt = DatabaseUtil.getConnection().prepareStatement(chitiettour);
            ResultSet rs = pt.executeQuery();
            while (rs.next()) {%>
	<tr>
		<td ><%=rs.getString("loaitour")%>
        </td>
		<td ><%=rs.getString("matour")%>
        </td>
		<td ><p><%=rs.getString("tentour")%></p>
        </td>
		<td ><%=rs.getString("giave")%>
        </td>
		<td ><%=rs.getString("diadiemdi")%>
        </td>
		<td ><%=rs.getString("diadiemden")%>
        </td>
        <td ><%=rs.getString("songaytour")%>
        </td>
		<td ><a href="index.jsp?display=quanlychitiettour&action=sua&id=<%=rs.getString("id")%>">Sửa</a></td>
        <td ><a href="/admin/xulychitiettour?actionSubmit=XOA&id=<%=rs.getString("id")%>">Xóa</a></td>
    </tr>
        <%} %>

    </table>
</div>