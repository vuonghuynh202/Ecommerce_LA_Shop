const searchInput = document.getElementById('search-input'); 
const menuLinks = document.querySelectorAll('.menu-link-single');
const resultsContainer = document.getElementById('search-results');

// handle input event
searchInput.addEventListener('input', function() {
    const input = this.value.trim().toLowerCase();
    
    // handle search result
    if (input.length > 0) {
        const matches = Array.from(menuLinks).filter(link =>
            link.textContent.toLowerCase().includes(input)
        );

        renderResults(matches);
    } else {
        hideResults();
    }
});

// render search result function
function renderResults(matches) {
    resultsContainer.innerHTML = '';

    if (matches.length > 0) {
        resultsContainer.style.display = 'block'; // display container if get results
        matches.forEach(link => {
            const li = document.createElement('li');
            li.innerHTML = `<a href="${link.href}">${link.textContent}</a>`;
            resultsContainer.appendChild(li);
        });
    } else {
        resultsContainer.innerHTML = '<li>No products found.</li>';
    }
}

// hide search result function
function hideResults() {
    resultsContainer.style.display = 'none';
}

// handle click outside event
document.addEventListener('click', function(event) {
    if (!searchInput.contains(event.target) && !resultsContainer.contains(event.target)) {
        hideResults();
    }
});

// handle blur event
searchInput.addEventListener('blur', function() {
    setTimeout(hideResults, 100);
});
