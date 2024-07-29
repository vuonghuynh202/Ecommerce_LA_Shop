$(document).ready(function () {
    // applies DataTables for every class have 'myTable'
    $('.my-table').each(function () {
        $(this).DataTable();
    });
});

//Move to trash with ajax
function actionMoveToTrash(event) {
    event.preventDefault();
    let urlRequest = $(this).data('url')
    let that = $(this)
    
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
            
            const Toast = Swal.mixin({
                toast: true,
                position: "top-end",
                showConfirmButton: false,
                timer: 3000,
                timerProgressBar: true,
                didOpen: (toast) => {
                  toast.onmouseenter = Swal.stopTimer;
                  toast.onmouseleave = Swal.resumeTimer;
                }
              });
              Toast.fire({
                icon: "success",
                title: data.message
            });
        },
        error: function(xhr) {
            console.error(xhr)
        }
    })
}
$(function () {
    $(document).on("click", ".action_move_to_trash", actionMoveToTrash);
});

//restore from trash
function actionRestore(event) {
    event.preventDefault()
    let urlRequest = $(this).data('url')
    let that = $(this)

    $.ajax({
        type: 'GET',
        url: urlRequest,

        success: function(data) {
            if(data.code == 200) {
                that.closest('tr').remove()
            } 
        },
        error: function(xhr) {
            console.error(xhr)
        }
    })
}
$(function () {
    $(document).on("click", ".action_restore", actionRestore);
});

//delete forever
function actionForceDelete(event) {
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
                type: 'GET',
                url: urlRequest,
                success: function(data) {
                    if(data.code == 200) {
                        that.closest('tr').remove();
                    }
                    
                    Swal.fire({
                        title: "Deleted!",
                        text: data.message,
                        icon: "success",
                    });
                },
                error: function(xhr) {
                    console.error(xhr)
                }
            })
        }
    });
}
$(function () {
    $(document).on("click", ".action_force_delete", actionForceDelete);
});