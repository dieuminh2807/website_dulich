<div id="KhungToanBo">
    <div id="Dangnhap">
        <div class="Title-Left"><p>Đăng Nhập Quản Trị</p></div>
        <div id="DangNhapbox">
            <form method="post" action="/admin/xulydangnhapadmin">
                <input type="text" name="username" id="username" class="textboxdangnhap"
                       onfocus="if (this.value == '') {this.value = '';}"
                       onblur="if (this.value == '') {this.value = '';}" type="text" name="s" value=""/>
                <input type="password" name="password" id="pword" class="textboxdangnhap"
                       onfocus="if (this.value == '') {this.value = '';}"
                       onblur="if (this.value == '') {this.value = '';}" type="text" name="s" value=""/><br/>
                <input type="button" value="Quên Mật Khẩu" class="buttondangnhap"/>
                <input type="submit" name='submit' value="Đăng Nhập " class="buttondangnhap"/>
                </form>
        </div>
        <div id="vetrangchu"><a href="../index.jsp">Về Trang Chủ </a></div>
    </div>
</div>
</body>
</html>