//slug
function ChangeToSlug(slugInput, slugOutput)
{
    var title, slug;
 
    //Lấy text từ thẻ input title 
    title = document.getElementById(slugInput).value;
 
    //Đổi chữ hoa thành chữ thường
    slug = title.toLowerCase();
 
    //Đổi ký tự có dấu thành không dấu
    slug = slug.replace(/á|à|ả|ạ|ã|ă|ắ|ằ|ẳ|ẵ|ặ|â|ấ|ầ|ẩ|ẫ|ậ/gi, 'a');
    slug = slug.replace(/é|è|ẻ|ẽ|ẹ|ê|ế|ề|ể|ễ|ệ/gi, 'e');
    slug = slug.replace(/i|í|ì|ỉ|ĩ|ị/gi, 'i');
    slug = slug.replace(/ó|ò|ỏ|õ|ọ|ô|ố|ồ|ổ|ỗ|ộ|ơ|ớ|ờ|ở|ỡ|ợ/gi, 'o');
    slug = slug.replace(/ú|ù|ủ|ũ|ụ|ư|ứ|ừ|ử|ữ|ự/gi, 'u');
    slug = slug.replace(/ý|ỳ|ỷ|ỹ|ỵ/gi, 'y');
    slug = slug.replace(/đ/gi, 'd');
    //Xóa các ký tự đặt biệt
    slug = slug.replace(/\`|\~|\!|\@|\#|\||\$|\%|\^|\&|\*|\(|\)|\+|\=|\,|\.|\/|\?|\>|\<|\'|\"|\:|\;|_/gi, '');
    //Đổi khoảng trắng thành ký tự gạch ngang
    slug = slug.replace(/ /gi, "-");
    //Đổi nhiều ký tự gạch ngang liên tiếp thành 1 ký tự gạch ngang
    //Phòng trường hợp người nhập vào quá nhiều ký tự trắng
    slug = slug.replace(/\-\-\-\-\-/gi, '-');
    slug = slug.replace(/\-\-\-\-/gi, '-');
    slug = slug.replace(/\-\-\-/gi, '-');
    slug = slug.replace(/\-\-/gi, '-');
    //Xóa các ký tự gạch ngang ở đầu và cuối
    slug = '@' + slug + '@';
    slug = slug.replace(/\@\-|\-\@|\@/gi, '');
    //In slug ra textbox có id “slug”
    document.getElementById(slugOutput).value = slug;
}

//preview upload image
document.addEventListener('DOMContentLoaded', function() {
    var fileInput = document.getElementById('imageUpload');
    var previewContainer = document.getElementById('preview_container');

    fileInput.addEventListener('change', function() {
        var file = this.files[0];
        if (file) {
        var reader = new FileReader();
        reader.onload = function(event) {
            var imgElement = document.createElement('img');
            imgElement.classList.add('preview');
            imgElement.src = event.target.result;
            previewContainer.innerHTML = ''; // Clear previous preview
            previewContainer.appendChild(imgElement);
        };
        reader.readAsDataURL(file);
        }
    });
});

function actionDelete(event) {
    event.preventDefault();
    let urlRequest = $(this).data('url')
    let that = $(this)

    Swal.fire({
        title: "Are you sure?",
        text: 'This action can not be undone!',
        icon: "warning",
        showCancelButton: true,
        confirmButtonColor: "#e13d30",
        cancelButtonColor: "#c3c2c2",
        confirmButtonText: "Yes, delete it!",
    }).then((result) => {
        if (result.isConfirmed) {
            $.ajax({
                type: 'DELETE',
                url: urlRequest,
                data: {
                    _token: $('meta[name="csrf-token"]').attr('content'),
                },
                success: function(data) {
                    if(data.code == 200) {
                        that.closest('tr').remove();
                    }
                    
                    showToast('success', data.message)
                },
                error: function(xhr) {
                    console.error(xhr)
                }
            })
        }
    });
}
$(function () {
    $(document).on("click", ".action_delete", actionDelete);
});