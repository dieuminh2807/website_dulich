function kiemtradangnhap() {
    var username = document.getElementById("username").value;
    var password = document.getElementById("password").value;

    username = username.trim();
    if (username == "" || username.length < 4) {
        alert("Bạn phải nhập username ít nhất 4 ký tự!");
        return false;
    }
    if (password == "" || password.length < 4) {
        alert("Bạn phải nhập password ít nhất 4 ký tự!");
        return false;
    }

    return true;
}
	
	