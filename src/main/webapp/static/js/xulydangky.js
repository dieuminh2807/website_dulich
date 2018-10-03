function kiemtrathongtindangky()
{
	//lưu giá trị các textbox vào biến
	var tendangnhap=document.getElementById("tendangnhap").value;
	var matkhau=document.getElementById("matkhau").value;
	var nhaplaimatkhau=document.getElementById("nhaplaimatkhau").value;
	var hoten=document.getElementById("hoten").value;
	var sodienthoai=document.getElementById("sodienthoai").value;
	var email=document.getElementById("email").value;
	var diachi=document.getElementById("diachi").value;
	//Làm rổng thẻ show lỗi
	document.getElementById("Loitendangnhap").innerHTML="";
	document.getElementById("Loimatkhau").innerHTML="";
	document.getElementById("Loinhaplaimatkhau").innerHTML="";
	document.getElementById("Loihoten").innerHTML="";
	document.getElementById("Loisodienthoai").innerHTML="";
	document.getElementById("Loidiachi").innerHTML="";
	document.getElementById("Loiemail").innerHTML="";
	
	//Cắt Đầu Cuối Chuỗi
	tendangnhap=tendangnhap.trim();
	hoten=hoten.trim();
	sodienthoai=sodienthoai.trim();
	email=email.trim();
	diachi=diachi.trim();
	var loi = new Array();
	if(tendangnhap.length==0)
		{
			loi["Loitendangnhap"]="Không được bỏ trống Tên Đăng Nhập";
		}
	else
		{
			var re=/^[a-zA-Z0-9]{4,}$/;
			if(!tendangnhap.match(re))
			{
				loi["Loitendangnhap"]="Tên Đăng Nhập không hợp lệ";
			}
		}
	if(matkhau.length==0)
		{
			loi["Loimatkhau"]="Không được bỏ trống Mật Khẩu";
		}
		else	
		if(matkhau.length<4)
			{
				loi["Loimatkhau"]="Mật Khẩu ít nhất 4 ký tự";
			}
		
	if(nhaplaimatkhau.length==0)
		{
			loi["Loinhaplaimatkhau"]="Hãy Nhập Lại Mật Khẩu";
		}
		else
		{
			if(nhaplaimatkhau!=matkhau)
			{
				loi["Loinhaplaimatkhau"]="Nhập lại Mật Khẩu không đúng";
			}
		}
		
	if(hoten.length==0)
		{
			loi["Loihoten"]="Không được bỏ trống Họ Tên";
		}
	else
		{
			var re=/[\.\_\\\|\!\@\`\~\#\$\%\^\&\*\)\(\-\_\=\+\[\]\{\}\/\>\,\;:"]/;
			if(hoten.match(re))
			{
				loi["Loihoten"]="Họ Tên không được chứa ký tự lạ";
				
			}
		}

	if(sodienthoai.length==0)
		{
			loi["Loisodienthoai"]="Không được bỏ trống Số Điện Thoại";
			
		}
	else
		{
			var re=/^0[\d]{9,10}$/;
			if(!sodienthoai.match(re))
			{
				loi["Loisodienthoai"]="Số Điện Thoại không hợp lệ";
			}
		}
	if(diachi.length==0)
		{
			loi["Loidiachi"]="Không được bỏ trống Địa Chỉ";
		}
	else
		{
			if(diachi.length<10)
			{
				loi["Loidiachi"]="Địa Chỉ Quá Ngắn";
			}
		}
	if(email.length!=0)
		{
			var re=/^[\w.]+@(([\w]{2,6})|([\w]{2,6}.[\w]{2,6}))$/;
			if(!email.match(re))
				{
					loi["Loiemail"]="Email không hợp lệ";
				}
		}
	var sophantumang=0;
	for (var value in loi){
   		sophantumang++;
	}

	if(sophantumang==0)
		{
			return true;
		}
	else
	{
		if(typeof loi["Loitendangnhap"] !="undefined")
			document.getElementById("Loitendangnhap").innerHTML="-"+loi["Loitendangnhap"];
		if(typeof loi["Loimatkhau"] !="undefined")
			document.getElementById("Loimatkhau").innerHTML="-"+loi["Loimatkhau"];
		if(typeof loi["Loinhaplaimatkhau"] !="undefined")
			document.getElementById("Loinhaplaimatkhau").innerHTML="-"+loi["Loinhaplaimatkhau"];
		if(typeof loi["Loihoten"] !="undefined")
			document.getElementById("Loihoten").innerHTML="-"+loi["Loihoten"];
		if(typeof loi["Loisodienthoai"] !="undefined")
			document.getElementById("Loisodienthoai").innerHTML="-"+loi["Loisodienthoai"];
		if(typeof loi["Loidiachi"] !="undefined")
			document.getElementById("Loidiachi").innerHTML="-"+loi["Loidiachi"];
		if(typeof loi["Loiemail"] !="undefined")
			document.getElementById("Loiemail").innerHTML="-"+loi["Loiemail"];
		return false;
	}
}
function kiemtrasuathongtin()
{
	//lưu giá trị các textbox vào biến
	var hoten=document.getElementById("hoten").value;
	var sodienthoai=document.getElementById("sodienthoai").value;
	var email=document.getElementById("email").value;
	var diachi=document.getElementById("diachi").value;
	//Làm rổng thẻ show lỗi
	document.getElementById("Loihoten").innerHTML="";
	document.getElementById("Loisodienthoai").innerHTML="";
	document.getElementById("Loidiachi").innerHTML="";
	document.getElementById("Loiemail").innerHTML="";
	
	//Cắt Đầu Cuối Chuỗi
	
	hoten=hoten.trim();
	sodienthoai=sodienthoai.trim();
	email=email.trim();
	diachi=diachi.trim();
	var loi = new Array();
	
	if(hoten.length==0)
		{
			loi["Loihoten"]="Không được bỏ trống Họ Tên";
		}
	else
		{
			var re=/[\.\_\\\|\!\@\`\~\#\$\%\^\&\*\)\(\-\_\=\+\[\]\{\}\/\>\,\;:"]/;
			if(hoten.match(re))
			{
				loi["Loihoten"]="Họ Tên không được chứa ký tự lạ";
				
			}
		}

	if(sodienthoai.length==0)
		{
			loi["Loisodienthoai"]="Không được bỏ trống Số Điện Thoại";
		}
	else
		{
			var re=/^0[\d]{9,10}$/;
			if(!sodienthoai.match(re))
			{
				loi["Loisodienthoai"]="Số Điện Thoại không hợp lệ";
			}
		}
	if(diachi.length==0)
		{
			loi["Loidiachi"]="Không được bỏ trống Địa Chỉ";
		}
	else
		{
			if(diachi.length<10)
			{
				loi["Loidiachi"]="Địa Chỉ Quá Ngắn";
			}
		}
	if(email.length!=0)
		{
			var re=/^[\w.]+@(([\w]{2,6})|([\w]{2,6}.[\w]{2,6}))$/;
			if(!email.match(re))
				{
					loi["Loiemail"]="Email không hợp lệ";
				}
		}
	var sophantumang=0;
	for (var value in loi){
   		sophantumang++;
	}
	
	if(sophantumang==0)
		{
			return true;
		}
	else
	{
		if(typeof loi["Loihoten"] !="undefined")
			document.getElementById("Loihoten").innerHTML=loi["Loihoten"];
		if(typeof loi["Loisodienthoai"] !="undefined")
			document.getElementById("Loisodienthoai").innerHTML=loi["Loisodienthoai"];
		if(typeof loi["Loidiachi"] !="undefined")
			document.getElementById("Loidiachi").innerHTML=loi["Loidiachi"];
		if(typeof loi["Loiemail"] !="undefined")
			document.getElementById("Loiemail").innerHTML=loi["Loiemail"];
		return false;
	}
}

