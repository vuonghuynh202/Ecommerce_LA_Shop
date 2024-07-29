//set rating
function setRating(rating) {
    document.getElementById('rating').value = rating;

    const stars = document.querySelectorAll('.rating-icon');
    stars.forEach((star, index) => {
        star.classList.remove('fas', 'far');
        star.classList.add(index < rating ? 'fas' : 'far');
    });
}


//create review with ajax
document.getElementById('review-form').addEventListener('submit', function(event) {
    event.preventDefault();
    
    let form = event.target;
    let formData = new FormData(form);
    let url = form.action;
    
    fetch(url, {
        method: 'POST',
        body: formData,
        headers: {
            'X-CSRF-TOKEN': document.querySelector('input[name="_token"]').value
        }
    })
    .then(response => response.json())
    .then(data => {
        if (data.success) {
            let reviewContainer = document.getElementById('reviews-container');
            const div = document.createElement('div');
            let newReview = reviewContainer.appendChild(div);
            newReview.classList.add(`review-${data.review.id}`);
            newReview.classList.add('row');

            let ratingStars = '';
            for (let i = 1; i <= 5; i++) {
                if (i <= data.review.rating) {
                    ratingStars += '<i class="fas fa-star"></i>';
                } else {
                    ratingStars += '<i class="far fa-star"></i>';
                }
            }

            let userImage = data.review.user.image; 
            let currentUserId = data.current_user;
            
            let reviewMenu = '';
            if (currentUserId === data.review.user.id) {
                reviewMenu = `
                    <div class="dropdown dropleft">
                        <button role="button" id="myInput" type="button" class="btn dropdown" data-toggle="dropdown">
                            <i class="fas fa-ellipsis-v"></i>
                        </button>
                        <div class="dropdown-menu" aria-labelledby="dropdownMenu2">
                            <a href="" data-id="${data.review.id}" class="dropdown-item action_delete">Delete</a>
                        </div>
                    </div>
                `;
            }
            
            newReview.innerHTML = `
                <div class="col-md-12">
                    <div class="mb-4 d-flex justify-content-between">
                        <div class="review-left d-flex">
                            <div class="user-image-review">
                                <img src="${userImage}" alt="Image" class="img-fluid mr-3 mt-1">
                            </div>
                            <div class="media-body">
                                <div class="user-review-name">${data.review.user.name}<small> - <i>${new Date(data.review.created_at).toLocaleString()}</i></small></div>
                                <div class="user-rating text-primary mb-2">
                                    ${ratingStars}
                                </div>
                                <p class="review-content">${data.review.review}</p>
                            </div>
                        </div>
                        <div class="review-right">
                            ${reviewMenu}
                        </div>
                    </div>
                </div>
            `;
            
            reviewContainer.prepend(newReview);
            form.reset();
        } else {
            console.error('Error:', data);
        }
    })
    .catch(error => console.error('Error:', error));
});


//delete review with ajax
document.addEventListener('click', function(event) {
    if (event.target.classList.contains('action_delete')) {
        event.preventDefault();
        
        let reviewId = event.target.getAttribute('data-id');
        let url = `/review/delete/${reviewId}`;
        
        fetch(url, {
            method: 'DELETE',
            headers: {
                'X-CSRF-TOKEN': document.querySelector('input[name="_token"]').value
            }
        })
        .then(response => response.json())
        .then(data => {
            if (data.success) {
                let reviewElement = document.querySelector(`.review-${reviewId}`);
                reviewElement.remove();
            } else {
                console.error('Error:', data);
            }
        })
        .catch(error => console.error('Error:', error));
    }
});


// Sync when inputs change
const addToCartForm = document.querySelector('.add-to-cart-form');
const buyNowForm = document.querySelector('.buy-now-form'); 
function syncForms() {
    const size = addToCartForm.querySelector('input[name="size"]:checked');
    const color = addToCartForm.querySelector('input[name="color"]:checked');
    
    if (size) {
        buyNowForm.querySelector('input[name="size"]').value = size.value;
    }
    if (color) {
        buyNowForm.querySelector('input[name="color"]').value = color.value;
    }
}
addToCartForm.addEventListener('change', syncForms);
syncForms();

const quantity = addToCartForm.querySelector('input[name="quantity"]').value;
const plusBtn = addToCartForm.querySelector('.btn-plus');
const minusBtn = addToCartForm.querySelector('.btn-minus');

let buyNowQuantity = buyNowForm.querySelector('input[name="quantity"]').value = quantity;

plusBtn.addEventListener('click', function() {
    buyNowQuantity++;
    buyNowForm.querySelector('input[name="quantity"]').value = buyNowQuantity;
});

minusBtn.addEventListener('click', function() {
    if(buyNowQuantity > 1) {
        buyNowQuantity--;
        buyNowForm.querySelector('input[name="quantity"]').value = buyNowQuantity;
    }
});