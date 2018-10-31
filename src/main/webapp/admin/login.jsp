
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<div class="container">
    <br/><br/>
    <div class="row">
        <div class="col-4"></div>
        <div class="col-4">
            <!-- Start form -->
            <form action ="/admin/xulydangnhapadmin" method="post">
                <div class="form-group">
                    Tên đăng nhập: <input type="text" name = "username" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" placeholder="Nhập tên">
                </div>
                <div class="form-group">
                    Mật khấu: <input type="password" class="form-control" name="password" id="password" placeholder="Mật khấu">
                </div>
                <div class="form-check">
                    <button type="submit" class="btn btn-primary">Đăng nhập</button>
                </div>
            </form>
        </div>
    </div>
</div>


<div class="modal" tabindex="-1" role="dialog" id="loidangnhap">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title">Lỗi</h5>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
            </div>
            <div class="modal-body">
                <p>${requestScope.loidangnhap}</p>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-secondary" data-dismiss="modal">Đóng</button>
            </div>
        </div>
    </div>
</div>

<c:if test="${requestScope.loidangnhap!=null}">
    <script>
        $('#loidangnhap').modal("show");
    </script>
</c:if>