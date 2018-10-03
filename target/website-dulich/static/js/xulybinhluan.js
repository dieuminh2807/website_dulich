function binhluan (){
	var x = document.getElementById("dongcomment").value;
	var x=x.trim();
	if(x==""){
		alert("Vui lòng nhập bình luận");
		return false;
		}
	var y = document.createElement("p");
	y.innerHTML = x;
	var z = document.getElementById("comment");
	z.append(y)
	document.getElementById("dongcomment").value = "";
	return false;
}