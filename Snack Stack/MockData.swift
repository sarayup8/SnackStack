//
//  MockData.swift
//  Snack Stack
//
//  Created by Sarayu Pesala on 4/21/26.
//

import Foundation

// Fake recipes to use while the API is down (Made by ChatGPT)
let mockRecipes: [RecipeSummary] = [
    RecipeSummary(idMeal: "1", strMeal: "Spaghetti Bolognese", strMealThumb: nil),
    RecipeSummary(idMeal: "2", strMeal: "Chicken Curry", strMealThumb: nil),
    RecipeSummary(idMeal: "3", strMeal: "Chocolate Cake", strMealThumb: nil),
    RecipeSummary(idMeal: "4", strMeal: "Caesar Salad", strMealThumb: nil),
    RecipeSummary(idMeal: "5", strMeal: "Beef Tacos", strMealThumb: nil),
    RecipeSummary(idMeal: "6", strMeal: "Veggie Stir Fry", strMealThumb: nil),
    RecipeSummary(idMeal: "7", strMeal: "Pancakes", strMealThumb: nil),
    RecipeSummary(idMeal: "8", strMeal: "Salmon with Rice", strMealThumb: nil)
]

let mockDetail = RecipeDetail(
    idMeal: "1",
    strMeal: "Spaghetti Bolognese",
    strCategory: "Beef",
    strArea: "Italian",
    strInstructions: "1. Cook the spaghetti in boiling salted water.\n2. Brown the beef mince in a pan.\n3. Add tomato sauce and simmer for 20 minutes.\n4. Serve the sauce over the spaghetti.",
    strMealThumb: nil,
    strYoutube: nil,
    strIngredient1: "Spaghetti", strIngredient2: "Beef Mince",
    strIngredient3: "Tomato Sauce", strIngredient4: "Onion",
    strIngredient5: "Garlic", strIngredient6: "Olive Oil",
    strIngredient7: nil, strIngredient8: nil,
    strIngredient9: nil, strIngredient10: nil,
    strIngredient11: nil, strIngredient12: nil,
    strIngredient13: nil, strIngredient14: nil,
    strIngredient15: nil, strIngredient16: nil,
    strIngredient17: nil, strIngredient18: nil,
    strIngredient19: nil, strIngredient20: nil,
    strMeasure1: "200g", strMeasure2: "300g",
    strMeasure3: "1 cup", strMeasure4: "1 large",
    strMeasure5: "2 cloves", strMeasure6: "2 tbsp",
    strMeasure7: nil, strMeasure8: nil,
    strMeasure9: nil, strMeasure10: nil,
    strMeasure11: nil, strMeasure12: nil,
    strMeasure13: nil, strMeasure14: nil,
    strMeasure15: nil, strMeasure16: nil,
    strMeasure17: nil, strMeasure18: nil,
    strMeasure19: nil, strMeasure20: nil
)

