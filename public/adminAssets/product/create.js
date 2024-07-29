$(function() {
    $(".select2").select2({
        placeholder: 'Each element should be separated by a comma',
        tags: true,
        tokenSeparators: [',']
    });
});

//preview image
document.getElementById('fileInput').addEventListener('change', function(event) {
    const files = event.target.files;
    const previewContainer = document.getElementById('previewContainer');
    previewContainer.innerHTML = '';

    Array.from(files).forEach(file => {
        if (file.type.startsWith('image/')) {
            const reader = new FileReader();
            reader.onload = function(e) {
                const img = document.createElement('img');
                img.src = e.target.result;
                img.classList.add('preview');
                previewContainer.appendChild(img);
            }
            reader.readAsDataURL(file);
        }
    });
});