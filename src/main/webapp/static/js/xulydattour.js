function kiemtrasoluong(text)
{
	var soluong = parseInt(text.value.trim());
	if (isNaN(soluong) || soluong<0)
	{
		alert("Số lượng không hợp lệ!");
	}
	else 
	{
		var nguoilon = parseInt(document.getElementById("nguoilon").value.trim());
		var treem = parseInt(document.getElementById("treem").value.trim());
		var tong = nguoilon + treem;
		if(isNaN(tong) == false){
			document.getElementById("tong").value=tong;
		}
	}
}

function xacnhantruockhigui(){
	var nguoilon = parseInt(document.getElementById("nguoilon").value.trim());
	var treem = parseInt(document.getElementById("treem").value.trim());
	var tong = nguoilon + treem;
	if (isNaN(nguoilon) || nguoilon<0)
		{
			alert("Nhập số lượng người lớn không hợp lệ!");
			return false;
		}
	if (isNaN(treem) ||  treem<0)
		{
			alert("Nhập số lượng trẻ em không hợp lệ!");
			return false;
		}
		
	return true;
}

