const searchInput = document.getElementById('search-query');
const searchResults = document.getElementById('search-results');

let currentQuery = ''; // Variable to store the current query

searchInput.addEventListener('input', function() {
    let query = this.value.trim();

    if (query === currentQuery) {
        return; // If query hasn't changed, do not send a new AJAX request
    }
    currentQuery = query; // Update currentQuery with the current query value

    if (query.length > 0) {
        fetch(`/search?query=${encodeURIComponent(query)}`, {
            headers: {
                'X-Requested-With': 'XMLHttpRequest' // Mark the request as AJAX
            }
        })
        .then(response => response.json())
        .then(data => {
            // Check currentQuery again before updating the DOM
            if (currentQuery === query) {
                searchResults.innerHTML = '';
                if (data.length > 0) {
                    data.forEach(product => {
                        let li = document.createElement('li');
                        li.innerHTML = `
                            <a class="text-dark text-decoration-none" href="/product/${product.slug}">${product.name}</a>
                        `;
                        searchResults.appendChild(li);
                    });
                } else {
                    searchResults.innerHTML = '<li>No products found.</li>';
                }
            }
        })
        .catch(error => console.error('Error:', error));
    } else {
        searchResults.innerHTML = '';
    }
});

//delete results when blur
function inputBlur() {
    let clicked = false;
    
    searchResults.addEventListener('mousedown', () => {
        clicked = true;
    });
    
    searchInput.addEventListener('blur', () => {
        if (!clicked) {
            searchResults.innerHTML = '';
        }
        clicked = false;
    });
}
inputBlur();