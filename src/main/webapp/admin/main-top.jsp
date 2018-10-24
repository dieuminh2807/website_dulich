<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/xml" prefix="x" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<c:if test="${requestScope.themthanhcong!=null}">
    <script type="text/javascript">alert('${requestScope.thanhcong}')</script>
</c:if>

<c:if test="${requestScope.loithem!=null}">
    <script type="text/javascript">alert('${requestScope.loi}')</script>
</c:if>
<div id="Menu">
    <div class="Title-Left"><p>Chào ADMIN</p></div>
    <div id="Control_Panel">
        <div id="Panel_Box">
            <div id="QuanlyLoaiSP">
                <a href="index.jsp?display=quanlyloaitour" >
                    <img src="Images/quanlytour.jpg" width="150" height="130" />
                    <p>Quản Lý Tour</p>
                </a>
            </div>
        </div>
        <div id="Panel_Box">
            <div id="QuanlyLoaiSP">
                <a href="index.jsp?display=quanlychitiettour" >
                    <img src="Images/Quanlykhachang.png" width="150" height="130" />
                    <p> Quản Lý Đặt Tour</p>
                </a>
            </div>
        </div>
        <div id="Panel_Box">
            <div id="QuanlyLoaiSP">
                <a href="quanlylichtrinh.jsp?ac=lichtrinh">
                    <img src="Images/khachhang.jpeg" width="150" height="130"/>
                    <p>Thông Tin Khách Hàng</p>
                </a>
            </div>
        </div>
        <div id="Panel_Box">
            <div id="QuanlyLoaiSP">
                <a href="quanlydonhang.jsp?ac=donhang" >
                    <img src="Images/doanhth.jpeg" width="150" height="130" />
                    <p> Thống Kê Doanh Thu</p>
                </a>
            </div>
        </div>
        <div id="Panel_Box">
            <div id="QuanlyLoaiSP">
                <a href="/admin/xulydangxuatadmin" >
                    <img src="Images/Dangxuat.png" width="150" height="130"/>
                    <p> Đăng Xuất</p>
                </a>
            </div>
        </div>

    </div>
</div><!--EndMENU-->