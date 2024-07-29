//toggle wishlist item with ajax
document.querySelectorAll('.wishlist-btn').forEach(button => {
    button.addEventListener('click', function (event) {
        event.stopPropagation();

        const productId = this.dataset.productId;
        const icon = this.querySelector('.heart-icon');
        const token = document.querySelector('meta[name="csrf-token"]').getAttribute('content');

        const wishlistCount = document.getElementById('wishlist-count');
        let wishlistQty = Number(wishlistCount.textContent);

        showLoading();

        fetch('/wishlist/toggle', {
            method: 'POST',
            headers: {
                'Content-Type': 'application/json',
                'X-CSRF-TOKEN': token,
            },
            body: JSON.stringify({ product_id: productId })
        })
        .then(response => {
            if (response.redirected) {
                window.location.href = response.url;
            } else {
                return response.json();
            }
        })
        .then(data => {
            if (data.status === 'added') {

                icon.classList.add('fas');
                icon.classList.remove('far');
                this.classList.add('chosen');

                wishlistQty = wishlistQty + 1;
                wishlistCount.innerText = wishlistQty;

                showToast('success', data.message);

            } else if (data.status === 'removed') {

                icon.classList.add('far');
                icon.classList.remove('fas');
                this.classList.remove('chosen');

                wishlistQty = wishlistQty - 1;
                wishlistCount.innerText = wishlistQty;

                showToast('success', data.message);
            }
        }).catch(error => {
            hideLoading();
            if (error.status === 401) {
                window.location.href = `/login`;
            } else {
                console.error('Error:', error);
            }
        });
    });
});


//delete wishlist item with ajax
const deleteButtons = document.querySelectorAll('.wishlist-delete-btn');
deleteButtons.forEach(button => {
    button.addEventListener('click', function (e) {
        e.preventDefault();

        const itemId = this.getAttribute('data-id');
        const token = document.querySelector('meta[name="csrf-token"]').getAttribute('content');

        const wishlistCount = document.getElementById('wishlist-count');
        let wishlistQty = Number(wishlistCount.textContent);

        fetch(`/wishlist/delete/${itemId}`, {
            method: 'DELETE',
            headers: {
                'X-CSRF-TOKEN': token,
                'Content-Type': 'application/json'
            }
        })
        .then(response => response.json())
        .then(data => {
            if (data.success) {
                this.closest('tr').remove();
                
                wishlistQty = wishlistQty - 1;
                wishlistCount.innerText = wishlistQty;
                
                showToast('success', data.message);

            } else {
                showToast('error', data.message);
            }
        })
        .catch(error => console.error('Error:', error));
    });
});