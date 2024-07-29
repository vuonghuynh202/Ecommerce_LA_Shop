//keep checkbox after filtering
function handleCheckboxGroup(allCheckboxId, groupCheckboxName) {
    const allCheckbox = document.getElementById(allCheckboxId);
    const groupCheckboxes = document.querySelectorAll(`input[name="${groupCheckboxName}"]:not(#${allCheckboxId})`);

    // when checkbox "All" is checked
    allCheckbox.addEventListener('change', function() {
        if (this.checked) {
            groupCheckboxes.forEach(checkbox => {
                checkbox.checked = false;
            });
        }
    });

    // when other checkboxes are checked
    groupCheckboxes.forEach(checkbox => {
        checkbox.addEventListener('change', function() {
            if (this.checked) {
                allCheckbox.checked = false;
            }
        });
    });
}

// Applies to each checkbox group
handleCheckboxGroup('price-all', 'prices[]');
handleCheckboxGroup('color-all', 'colors[]');
handleCheckboxGroup('size-all', 'sizes[]');
