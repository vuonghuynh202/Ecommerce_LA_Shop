
//add to cart
const addCartForm = document.querySelectorAll('.add-to-cart-form');
addCartForm.forEach(form => {
    form.addEventListener('submit', function(event) {
        event.preventDefault();
    
        const form = event.target;
        const formData = new FormData(form);

        const cartCount = document.getElementById('cart-count');
        let cartQty = Number(cartCount.textContent);

        showLoading();
    
        fetch(form.action, {
            method: 'POST',
            body: formData,
            headers: {
                'X-CSRF-TOKEN': document.querySelector('meta[name="csrf-token"]').getAttribute('content')
            }
        })
        .then(response => response.json())
        .then(data => {
            if (data.success) {

                //update cart count
                cartQty = cartQty + 1;
                cartCount.innerText = cartQty;

                showToast('success', data.message);

            } else {
                showToast('error', 'Add Failed! Try Again.');
            }
        })
        .catch(error => {
            hideLoading();
            console.error('Error:', error);
            showToast('error', 'Add Failed! Try Again.');
        });
    })
})


//delete cart item with ajax
const deleteCartButtons = document.querySelectorAll('.cart-delete-btn');
deleteCartButtons.forEach(button => {
    button.addEventListener('click', function (e) {
        e.preventDefault();

        const token = document.querySelector('meta[name="csrf-token"]').getAttribute('content');
        const productId = this.dataset.productId;
        const size = this.dataset.size;
        const color = this.dataset.color;

        const cartCount = document.getElementById('cart-count');
        let cartQty = Number(cartCount.textContent);

        const quantityInput = this.closest('tr').querySelector('#cart-quantity');
        let quantity = parseInt(quantityInput.value);
        
        const price = parseFloat(this.closest('tr').querySelector('.product-cart-price').innerText);
        let subtotal = parseFloat(document.getElementById('subtotal').innerText);
        let total = parseFloat(document.getElementById('total').innerText);
        let shipping = parseFloat(document.getElementById('shipping').innerText);

        fetch(`/cart/remove`, {
            method: 'DELETE',
            headers: {
                'X-CSRF-TOKEN': token,
                'Content-Type': 'application/json'
            }, 
            body: JSON.stringify({
                product_id: productId,
                size: size,
                color: color
            })
        })
        .then(response => response.json())
        .then(data => {
            if (data.success) {
                this.closest('tr').remove();

                //update cart count
                cartQty = cartQty - 1;
                cartCount.innerText = cartQty;

                // Adjust subtotal, total, shipping
                subtotal -= price * quantity;
                total -= price * quantity;
                shipping = subtotal == 0 ? 0 : shipping;
                total = subtotal == 0 ? 0 : total;

                // Update subtotal, total, shipping in the DOM
                document.getElementById('subtotal').innerText = `${subtotal.toFixed(2)}`;
                document.getElementById('total').innerText = `${total.toFixed(2)}`;
                document.getElementById('shipping').innerText = `${shipping.toFixed(2)}`;

                //show toast
                showToast('success', data.message);

            } else {
                showToast('error', 'Delete Failed!');
            }
        })
        .catch(error => console.error('Error:', error));
    });
});


//update product quantity in cart
document.addEventListener('DOMContentLoaded', function() {
    document.querySelectorAll('.btn-minus-cart, .btn-plus-cart').forEach(button => {
        button.addEventListener('click', function(event) {
            event.preventDefault();
    
            const token = document.querySelector('meta[name="csrf-token"]').getAttribute('content');
            const productId = this.getAttribute('data-product-id');
            const color = this.getAttribute('data-color');
            const size = this.getAttribute('data-size');
    
            // Find related quantity input and other elements within the current row
            const quantityInput = this.closest('tr').querySelector('#cart-quantity');
            let quantity = parseInt(quantityInput.value);
            
            //get item price, current quantity, subtotal and total in the DOM
            const price = parseFloat(this.closest('tr').querySelector('.product-cart-price').innerText);
            const currentQty = parseInt(quantityInput.getAttribute('data-current-quantity'))
            let subtotal = parseFloat(document.getElementById('subtotal').innerText);
            let total = parseFloat(document.getElementById('total').innerText);
    
            fetch(`/cart/update`, {
                method: 'POST',
                headers: {
                    'Content-Type': 'application/json',
                    'X-CSRF-TOKEN': token
                },
                body: JSON.stringify({
                    product_id: productId,
                    color: color,
                    size: size,
                    quantity: quantity
                })
            })
            .then(response => response.json())
            .then(data => {
                if (data.success) {
                    quantityInput.value = quantity;
                    console.log(currentQty);
    
                    // Adjust subtotal and total based on quantity change
                    if(quantity > currentQty) {
                        subtotal +=  price;
                        total += price;
                    } else if (quantity < currentQty){
                        subtotal -= price;
                        total -= price;
                    }
    
                    // Update subtotal and total in the DOM
                    document.getElementById('subtotal').innerText = `${subtotal.toFixed(2)}`;
                    document.getElementById('total').innerText = `${total.toFixed(2)}`;
    
                    // Update data-current-quantity attribute
                    quantityInput.setAttribute('data-current-quantity', quantity);
    
                } else {
                    showToast('error', 'Update Failed!');
                }
            })
            .catch(error => {
                console.error('Error:', error);
            });
        });
    });
});