$(document).ready(function() {
	$('#ThemKH').click((function() {
		var x = confirm("Vui lòng nhập đủ thông tin. ?")
		var tenHang = $.trim($('#tenHang').val());
		var donGia = $.trim($('#donGia').val());
		var ngayNhapHang = $.trim($('#ngayNhapHang').val());
		var noiSX = $.trim($('#noiSX').val());
		var donVi = $.trim($('#donVi').val());
		var soLuong = $.trim($('#soLuong').val());
	
		if (tenkh == '') {
			$('#errortenkh').text('Yêu cầu nhập lại')
			$('#tenkh').val('');
			$('#tenkh').focus();
		} else {
			$('#errortenkh').text('');
		}
		
	}))
	return false;
});
function deleteRow(r) {
	var x = confirm("Bạn có muốn xóa ?")
	if(x) {
			var i = r.parentNode.parentNode.rowIndex;
			document.getElementById("table").deleteRow(i);
	}
	else {
		return false;
	}
}