function hienthichitiettour(matour) {
    $.ajax({
        "url": "/admin/quanlytour?action=xemchitiettour&matour=" + matour,
        "success": function (result) {
            $('#xemtentour0').val(result.tenTour);
            $('#maloaitour0').val(result.maloaiTour);
            $('#tenloaitour0').val(result.tenloaiTour);
            $('#matour0').val(result.maTourdb);
            $('#giavenguoilon0').val(result.giavenguoilon);
            $('#giavetreem0').val(result.giavetreem);
            $('#thoigian0').val(result.thoigian);
            $('#khoihanh0').val(result.khoihanh);
            $('#phuongtien0').val(result.phuongtien);
            $('#khachsan0').val(result.khachsan);
            $('#lichtrinh0').val(result.lichtrinh);
            $('#hinhshow0').val(result.hinhshow);

            $('#hienthichitiettourModal').modal("show");
        }
    });
}


function suachitiettour(matour) {
    $.ajax({
        "url": "/admin/quanlytour?action=sua&matour=" + matour,
        "success": function (result) {
            $('#xemtentour').val(result.tenTour);
            $('#maloaitour').val(result.maloaiTour);
            $('#tenloaitour').val(result.tenloaiTour);
            $('#matour').val(result.maTourdb);
            $('#giavenguoilon').val(result.giavenguoilon);
            $('#giavetreem').val(result.giavetreem);
            $('#thoigian').val(result.thoigian);
            $('#khoihanh').val(result.khoihanh);
            $('#phuongtien').val(result.phuongtien);
            $('#khachsan').val(result.khachsan);
            $('#lichtrinh').val(result.lichtrinh);
            $('#hinhshow').val(result.hinhshow);

            $('#hienthichitiettourdesuaModal').modal("show");
        }
    });
}


function luusuachitiettour() {
    var formSua = $("#formSua");
    var formData = $(formSua).serializeArray();

    $.ajax({
        "url": "/admin/quanlytour",
        "type": 'POST',
        "dataType": 'json',
        "data" : formData,
        "success": function (result) {

            if(result.responseCode =="0") {
                $('#hienthichitiettourdesuaModal').modal("hide");
                alert("Lưu thành công");
            } else {
                alert("Lỗi lưu");
            }
        }
    });
}

function themtour() {
    $('#hienthichitiettourdethemModal').modal("show");
}

function luuthemtour() {
    var formThem = $("#formThem");
    var formData = $(formThem).serializeArray();
    $.ajax({
        "url": "/admin/quanlytour",
        "type": 'POST',
        "dataType": 'json',
        "data" : formData,
        "success": function (result) {
            if(result.phanhoithanhcong =="0"){
                $('#hienthichitiettourdethemModal').modal("hide");
                alert("Lưu thành công");
            }
            else{
                alert("Lưu thất bại");
            }

        }
        });
}

