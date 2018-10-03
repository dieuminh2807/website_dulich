function validateThemLoaiTour() {
	var maLoai = document.getElementById("Themmaloai").value;
	var thuTu = document.getElementById("Themthutu").value;
    var tenloai = document.getElementById("Themtenloai").value;
    var regex = /^[a-zA-Z]*$/;
	if(!regex.test(maLoai)) {
		alert("Mã loại không hợp lệ, vui lòng nhập lại!");
		return false;
	}

	if(maLoai==""||thuTu==""||tenloai==""){
        alert("Khong duoc de trong!");
        return false;
    }

    regex = /^[0-9]*$/;
    if(!regex.test(thuTu)) {
        alert("Thứ tự phải là kiểu số, vui lòng nhập lại!");
        return false;
    }

    if(thuTu.length>2){
        alert("Thứ tự tối đa 2 ký tự, vui lòng nhập lại!");
        return false;
    }

    return true;
}




function validateChiTietTour() {
    var matour = document.getElementById("MaDienThoai").value;
    var songay = document.getElementById("ManHinh").value;
    var tentour = document.getElementById("TenDienThoai").value;
    var giave = document.getElementById("GiaNL").value;
    var di = document.getElementById("Time").value;
    var den = document.getElementById("den").value;

    var regex = /^[a-zA-Z]*$/;
    if(!regex.test(matour)) {
        alert("Mã tour không hợp lệ, vui lòng nhập lại!");
        return false;
    }

    if(matour==""||songay==""||tentour==""||giave==""||di==""||den==""){
        alert("Khong duoc de trong!");
        return false;
    }

    regex = /^[0-9]*$/;
    if(!regex.test(songay)) {
        alert("So ngay phải là kiểu số, vui lòng nhập lại!");
        return false;
    }

    if(songay.length>2){
        alert("So ngay tối đa 2 ký tự, vui lòng nhập lại!");
        return false;
    }

    return true;
}