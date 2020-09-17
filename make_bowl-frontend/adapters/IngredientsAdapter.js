class IngredientsAdapter {
  constructor() {
    this.baseUrl = "http://localhost:3000/ingredients";
  }

  getIngredients() {
    return fetch(this.baseUrl).then((res) => res.json());
  }
}

// adapter = new IngredientsAdapter();
// adapter.getIngredients;
