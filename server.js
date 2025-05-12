const express = require('express');
const fs = require('fs');
const csv = require('csv-parser');
const { exec } = require('child_process');
const app = express();
const PORT = 3000;

// Middleware to parse JSON request bodies
app.use(express.json());

// Serve static files (HTML, CSS, client-side JS)
app.use(express.static('public'));

// Load dish images from CSV
function loadDishImages(callback) {
    const imageMap = {};

    fs.createReadStream('data/dishes.csv')
        .pipe(csv())
        .on('data', (row) => {
            imageMap[row.dish_name] = row.dish_image_url;
        })
        .on('end', () => {
            callback(imageMap);
        });
}

app.get('/ingredients', (req, res) => {
    const results = [];
    fs.createReadStream('data/ingredients.csv')
        .pipe(csv())
        .on('data', (data) => results.push(data))
        .on('end', () => res.json(results));
});

// Handle /suggest route
app.post('/suggest', (req, res) => {
    const ingredients = req.body.ingredients
    .map(i => `'${i.replace(/'/g, "\\'")}'`) 
    .join(',');

    exec(`swipl -s recipes.pl -g "findall(R, suggest_recipe([${ingredients}], R), List), writeln(List)." -t halt`,
        (error, stdout, stderr) => {
            if (error) {
                console.error('Prolog error:', error);
                return res.status(500).json({ error: 'Internal error' });
            }

            loadDishImages((imageMap) => {
                const raw = stdout.trim();
                const results = [];
                const dishPattern = /dish\(([^,\[\]]+)\s*,\s*\[([^\]]*)\]\)/g;
                let match;
                while ((match = dishPattern.exec(raw)) !== null) {
                    const name = match[1];
                    const ingList = match[2]
                        .split(',')
                        .map(x => x.trim())
                        .filter(Boolean);

                    results.push({
                        dish_name: name,
                        dish_ingredients: ingList,
                        dish_image_url: imageMap[name] || 'https://example.com/default.jpg'
                    });
                }
                res.json(results);
            });
        }
    );
});


app.listen(PORT, () => console.log(`Server running on http://localhost:${PORT}`));
