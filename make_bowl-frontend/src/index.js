const BASE_URL = "http://localhost:3000";
const INGREDIENTS_URL = `${BASE_URL}/ingredients`;
const BOWLS_URL = `${BASE_URL}/bowls`;

class Ingredients {}

const getIngredients = () => {
  return fetch(INGREDIENTS_URL).then((res) => res.json());
};

let ingredientsContainer = document.querySelector("#container");

getIngredients().then((json) => {
  json.forEach((ingredient) => {
    let ingredientElement = document.createElement("div");
    ingredientElement.setAttribute("class", "card");
    ingredientElement.dataset.id = ingredient.id;
    ingredientElement.innerHTML = renderElement(ingredient);
    ingredientsContainer.append(ingredientElement);
  });
});

function renderElement(ingredient) {
  return `  <div class="ingredients-info">
            <p>Ingredient: ${ingredient.name}</p>
            <p>Price: $${ingredient.price.toFixed(2)}</p>
            <p>Ingredient Type: ${ingredient.category}</p>
            </div>
            <div class="button-container">
            <button class="add"><img src="assets/add.png" class="add-img" /></button>
            </div>`;
}
