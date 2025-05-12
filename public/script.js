fetch('/ingredients')
    .then(res => res.json())
    .then(data => {
        const container = document.getElementById('unselected-cards');
        container.innerHTML = ''; // clear existing content if needed

        data.forEach(item => {
            const card = document.createElement('div');
            card.className = 'ingredients-card';

            const img = document.createElement('img');
            img.src = item.ingredient_image_url;
            img.alt = item.ingredient_name;
            img.loading = 'lazy';

            const title = document.createElement('h3');
            title.textContent = item.ingredient_name;

            card.appendChild(img);
            card.appendChild(title);
            container.appendChild(card);
        });
    })
    .catch(err => {
        console.error('Failed to load ingredients:', err);
    });

// Listen for typing in search inputs
document.querySelectorAll('.search-input').forEach(input => {
  input.addEventListener('input', () => {
    const query = input.value.toLowerCase();
    const targetId = input.dataset.target;
    const cards = document.getElementById(targetId).querySelectorAll('.ingredients-card');

    cards.forEach(card => {
      const name = card.querySelector('h3').textContent.toLowerCase();
      card.style.display = name.includes(query) ? '' : 'none';
    });
  });
});


// Handle clicks on any card inside the container
document.querySelector('.container').addEventListener('click', function (e) {
    const card = e.target.closest('.ingredients-card');
    if (!card) return; // Clicked outside a card

    // Toggle the "selected" class
    card.classList.toggle('selected');
});

// Handle clicks on the "→" button
// Get references to elements
const moveToSelectedBtn = document.getElementById('move-to-selected');
const unselectedContainer = document.getElementById('unselected-cards');
const selectedContainer = document.getElementById('selected-cards');

// When the "→" button is clicked
moveToSelectedBtn.addEventListener('click', () => {
    const selectedCards = unselectedContainer.querySelectorAll('.ingredients-card.selected');
    selectedCards.forEach(card => {
        card.classList.remove('selected'); // Remove selected highlight
        selectedContainer.insertBefore(card, selectedContainer.firstChild); // Move the card
    });
});

const moveToUnSelectedBtn = document.getElementById('move-to-unselected');
// Handle clicks on the "←" button
moveToUnSelectedBtn.addEventListener('click', () => {
    const selectedCards = selectedContainer.querySelectorAll('.ingredients-card.selected');
    selectedCards.forEach(card => {
        card.classList.remove('selected'); // Remove selected highlight
        unselectedContainer.insertBefore(card, unselectedContainer.firstChild); // Move the card
    });
});


// Handle clicks on the "Suggest Recipe" button
const suggestRecipeBtn = document.getElementById('find-recipes-btn');
suggestRecipeBtn.addEventListener('click', () => {
    const selectedCards = selectedContainer.querySelectorAll('.ingredients-card');
    if(selectedCards.length === 0) {
        alert('Please select at least one ingredient.');
        return;
    }
    const selectedIngredients = Array.from(selectedCards).map(card => card.querySelector('h3').textContent);

    // Send the selected ingredients to the server
    fetch('/suggest', {
        method: 'POST',
        headers: {
            'Content-Type': 'application/json'
        },
        body: JSON.stringify({ ingredients: selectedIngredients })

    })
        .then(res => res.json())
        .then(data => {
            const container = document.getElementById('recipe-list');
            container.innerHTML = ''; // Clear previous suggestions

            if (!Array.isArray(data)) {
                console.error('Invalid response format:', data);
                return;
            }

            data.forEach(item => {
                const card = document.createElement('div');
                card.className = 'dishes-card';

                const img = document.createElement('img');
                img.src = item.dish_image_url || 'https://example.com/default.jpg';
                img.alt = item.dish_name || 'Dish Image';

                const title = document.createElement('h3');
                title.textContent = item.dish_name || 'Unnamed Dish';

                const ingredients = document.createElement('p');
                ingredients.textContent = item.dish_ingredients.join(', ');
                card.appendChild(img);
                card.appendChild(title);
                card.appendChild(ingredients);
                container.appendChild(card);
            });

            // Hide selection layout & find button
            document.querySelector('.container').classList.add('hidden');
            document.querySelector('.find-recipes').classList.add('hidden');

            // Show result layout
            document.getElementById('results').classList.remove('hidden');

           document.querySelectorAll('.search-input').forEach(input => input.value = '');
        })
        .catch(err => {
            console.error('Failed to load suggestions:', err);
        });
});

// Handle clicks on the "Back to Selection" button
const backToSelectionBtn = document.getElementById('back-btn');
backToSelectionBtn.addEventListener('click', () => {
    fetch('/ingredients')
        .then(res => res.json())
        .then(data => {
            const container = document.getElementById('unselected-cards');
            container.innerHTML = ''; // clear existing content if needed

            data.forEach(item => {
                const card = document.createElement('div');
                card.className = 'ingredients-card';

                const img = document.createElement('img');
                img.src = item.ingredient_image_url;
                img.alt = item.ingredient_name;
                img.loading = 'lazy';

                const title = document.createElement('h3');
                title.textContent = item.ingredient_name;

                card.appendChild(img);
                card.appendChild(title);
                container.appendChild(card);
            });
        })
        .catch(err => {
            console.error('Failed to load ingredients:', err);
        });

    // Reset ingredients
    const unselectedCards = unselectedContainer.querySelectorAll('.ingredients-card');
    unselectedCards.forEach(card => {
        unselectedContainer.removeChild(card);
    });

    const selectedCards = selectedContainer.querySelectorAll('.ingredients-card');
    selectedCards.forEach(card => {
        selectedContainer.removeChild(card);
    });

    // Hide result layout
    document.getElementById('results').classList.add('hidden');

    // Show selection layout & find button
    document.querySelector('.container').classList.remove('hidden');
    document.querySelector('.find-recipes').classList.remove('hidden');
});