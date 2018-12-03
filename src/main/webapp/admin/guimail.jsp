
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<div class="container">
    <br/><br/>
    <div class="row">
        <div class="col-4"></div>
        <div class="col-4">
            <!-- Start form -->
            <form action="/admin/mail" method="post">
                <div class="form-group">
                    Gửi đến:<input type="text" name="to"  class="form-control" placeholder="Nhập địa chỉ gửi đến"/><br/>
                </div>
                <div class="form-group">
                    Chủ đề:<input type="text" name="subject"  class="form-control" placeholder="Nhập chủ đề"/><br/>
                </div>
                <div class="form-group">
                    Nội dung:<input type="text" name="message"  class="form-control" placeholder="Nhập nội dung"/><br/>
                </div>
                <div class="form-group">
                    Email của bạn:<input type="text" name="user"  class="form-control" placeholder="Nhập email của bạn"/><br/>
                </div>
                <div class="form-group">
                    Mật khấu: Mật khẩu:<input type="password" name="pass" class="form-control" placeholder="Nhập mật khấu">
                </div>
                <div class="form-check">
                    <button type="submit" class="btn btn-primary" value="Gửi">Gửi</button>
                </div>
            </form>
        </div>
    </div>
</div>

