fs.createReadStream('data/ingredients.csv')
  .pipe(csv())
  .on('data', (row) => {
    ingredients.push(row);
  })
  .on('end', () => {
    console.log('ingredients CSV file successfully processed');
    console.log(ingredients);
  });

  fs.createReadStream('data/dishes.csv')
  .pipe(csv())
  .on('data', (row) => {
    dishes.push(row);
  })
  .on('end', () => {
    console.log('dishes CSV file successfully processed');
    console.log(dishes);
  });