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
			//document.getElementById("image_upload").innerHTML = xmlhttp.responseText;
			$(".item[data-photo-id="+photo_id+"]").parent().remove();
		}
	};
	xmlhttp.open("GET", "admin_photo.php?action=delete_photo&gallery_id=" + gallery_id + "&photo_id=" + photo_id, true);
	xmlhttp.send();
}

function reorder_photo(gallery_id, photo_id, photo_order) {
	var xmlhttp = new XMLHttpRequest();
	xmlhttp.onreadystatechange = function() {
		if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
			//document.getElementById("image_upload").innerHTML = xmlhttp.responseText;
			console.log("Saved order");
		}
	};
	xmlhttp.open("GET", "admin_photo.php?action=reorder_photo&gallery_id=" + gallery_id + "&photo_id=" + photo_id + "&photo_order=" + photo_order, true);
	xmlhttp.send();
}

//$("#frm_upload_photos").serialize()
function upload_photos() {
	var data = new FormData();

	//Form data
	var form_data = $('#frm_upload_photos').serializeArray();
	$.each(form_data, function (key, input) {
	    data.append(input.name, input.value);
	});

	//File data
	var file_data = $('input[name="files"]')[0].files;
	for (var i = 0; i < file_data.length; i++) {
	    data.append("files[]", file_data[i]);
	}
	$.ajax({
	        url: "admin_photo.php",
	        type: "post",
					processData: false,
			    contentType: false,
			    data: data,
			    success: function (data) {
			        //success
							location.href = "edit_house.php?action=edit_gallery&house_id=" + $("#house_id").val();
			    },
			    error: function (e) {
			        //error
			    }
	    });
}


function init_bindings() {
	$("#edit_photos").on("click", function(){
	  location.href = $(this).form().attr('action')+"?action=edit_gallery&house_id=" + $(this).data("house_id")+"&layout_id=" + $(this).data("layout_id");
	});
/*
	$("#add_photos").on("click", function(){
	  $("#frm_upload_photos").submit();
		//upload_photos();
	});

	$("#frm_upload_photos").on("submit", function(){
	  console.log($("#frm_upload_photos").serialize());
	});
*/
	$(".delete_photo").on("click", function(){
	  delete_photo($(this).data("gallery-id"), $(this).data("photo-id"));
	});

	$('select[name="layout_id"]').on("change", function(){
	  location.href = "edit_suite_photos.php?" + $('form#frm_edit_suite').serialize();
	});

	$('form#frm_edit_suite select[name="suite_id"]').on("change", function(){
	  location.href = "edit_suite_photos.php?suite_id=" + $(this).val();
	});
}
