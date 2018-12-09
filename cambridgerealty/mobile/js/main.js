function nullOrEmpty(strText)
{
	return strText == null || strText == "";
}

function call_ajax($url, $params, $result_id)
{
	var xmlhttp = new XMLHttpRequest();
	xmlhttp.onreadystatechange = function() {
		if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
			document.getElementById($result_id).innerHTML = xmlhttp.responseText;
		}
	};
	xmlhttp.open("GET", http_build_url($url, $params), true);
	xmlhttp.send();
}

function ajax_admin_photo(gallery_code) {
	var xmlhttp = new XMLHttpRequest();
	xmlhttp.onreadystatechange = function() {
		if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
			document.getElementById("image_upload").innerHTML = xmlhttp.responseText;
		}
	};
	xmlhttp.open("GET", "admin_photo.php?gallery_code=" + gallery_code, true);
	xmlhttp.send();
}

function delete_photo(gallery_id, photo_id) {
	var xmlhttp = new XMLHttpRequest();
	xmlhttp.onreadystatechange = function() {
		if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
			document.getElementById("image_upload").innerHTML = xmlhttp.responseText;
		}
	};
	xmlhttp.open("GET", "admin_photo.php?action=delete_photo&gallery_id=" + gallery_id + "&photo_id=" + photo_id, true);
	xmlhttp.send();
}

function rotate_photo(gallery_id, photo_id) {
	var xmlhttp = new XMLHttpRequest();
	xmlhttp.onreadystatechange = function() {
		if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
			document.getElementById("image_upload").innerHTML = xmlhttp.responseText;
		}
	};
	xmlhttp.open("GET", "admin_photo.php?action=rotate_photo&gallery_id=" + gallery_id + "&photo_id=" + photo_id, true);
	xmlhttp.send();
}
