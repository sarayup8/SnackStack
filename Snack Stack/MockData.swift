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

let mockDetails: [RecipeDetail] = [
    
    RecipeDetail(
            idMeal: "1", strMeal: "Spaghetti Bolognese",
            strCategory: "Beef", strArea: "Italian",
            strInstructions: "1. Cook spaghetti in boiling salted water. \n2. Brown the beef mince in a pan. \n3. Add tomato sauce and simmer for 20 minutes. \n4. Serve over the spaghetti.",
            strMealThumb: nil, strYoutube: nil,
            strIngredient1: "Spaghetti", strIngredient2: "Beef Mince",
            strIngredient3: "Tomato Sauce", strIngredient4: "Onion",
            strIngredient5: "Garlic", strIngredient6: "Olive Oil",
            strIngredient7: nil, strIngredient8: nil, strIngredient9: nil, strIngredient10: nil,
            strIngredient11: nil, strIngredient12: nil, strIngredient13: nil, strIngredient14: nil,
            strIngredient15: nil, strIngredient16: nil, strIngredient17: nil, strIngredient18: nil,
            strIngredient19: nil, strIngredient20: nil,
            strMeasure1: "200g", strMeasure2: "300g", strMeasure3: "1 cup",
            strMeasure4: "1 large", strMeasure5: "2 cloves", strMeasure6: "2 tbsp",
            strMeasure7: nil, strMeasure8: nil, strMeasure9: nil, strMeasure10: nil,
            strMeasure11: nil, strMeasure12: nil, strMeasure13: nil, strMeasure14: nil,
            strMeasure15: nil, strMeasure16: nil, strMeasure17: nil, strMeasure18: nil,
            strMeasure19: nil, strMeasure20: nil
        ),

        RecipeDetail(
            idMeal: "2", strMeal: "Chicken Curry",
            strCategory: "Chicken", strArea: "Indian",
            strInstructions: "1. Heat oil in a pan. \n2. Fry onion and garlic until soft. \n3. Add chicken and curry powder and cook for 5 minutes. \n4. Pour in coconut milk and simmer for 20 minutes. \n5. Serve with rice.",
            strMealThumb: nil, strYoutube: nil,
            strIngredient1: "Chicken Breast", strIngredient2: "Coconut Milk",
            strIngredient3: "Curry Powder", strIngredient4: "Onion",
            strIngredient5: "Garlic", strIngredient6: "Oil", strIngredient7: "Rice",
            strIngredient8: nil, strIngredient9: nil, strIngredient10: nil,
            strIngredient11: nil, strIngredient12: nil, strIngredient13: nil, strIngredient14: nil,
            strIngredient15: nil, strIngredient16: nil, strIngredient17: nil, strIngredient18: nil,
            strIngredient19: nil, strIngredient20: nil,
            strMeasure1: "400g", strMeasure2: "400ml", strMeasure3: "2 tbsp",
            strMeasure4: "1 large", strMeasure5: "3 cloves", strMeasure6: "2 tbsp", strMeasure7: "2 cups",
            strMeasure8: nil, strMeasure9: nil, strMeasure10: nil,
            strMeasure11: nil, strMeasure12: nil, strMeasure13: nil, strMeasure14: nil,
            strMeasure15: nil, strMeasure16: nil, strMeasure17: nil, strMeasure18: nil,
            strMeasure19: nil, strMeasure20: nil
        ),

        RecipeDetail(
            idMeal: "3", strMeal: "Chocolate Cake",
            strCategory: "Dessert", strArea: "American",
            strInstructions: "1. Preheat oven to 350F. \n2. Mix flour, sugar, cocoa, and eggs together. \n3. Pour into a greased pan and bake for 30 minutes. \n4. Let cool then frost with chocolate frosting.",
            strMealThumb: nil, strYoutube: nil,
            strIngredient1: "Flour", strIngredient2: "Sugar",
            strIngredient3: "Cocoa Powder", strIngredient4: "Eggs",
            strIngredient5: "Butter", strIngredient6: "Milk",
            strIngredient7: nil, strIngredient8: nil, strIngredient9: nil, strIngredient10: nil,
            strIngredient11: nil, strIngredient12: nil, strIngredient13: nil, strIngredient14: nil,
            strIngredient15: nil, strIngredient16: nil, strIngredient17: nil, strIngredient18: nil,
            strIngredient19: nil, strIngredient20: nil,
            strMeasure1: "2 cups", strMeasure2: "1 cup", strMeasure3: "3/4 cup",
            strMeasure4: "2 large", strMeasure5: "1/2 cup", strMeasure6: "1 cup",
            strMeasure7: nil, strMeasure8: nil, strMeasure9: nil, strMeasure10: nil,
            strMeasure11: nil, strMeasure12: nil, strMeasure13: nil, strMeasure14: nil,
            strMeasure15: nil, strMeasure16: nil, strMeasure17: nil, strMeasure18: nil,
            strMeasure19: nil, strMeasure20: nil
        ),

        RecipeDetail(
            idMeal: "4", strMeal: "Beef Tacos",
            strCategory: "Beef", strArea: "Mexican",
            strInstructions: "1. Brown the beef with taco seasoning. \n2. Warm the tortillas. \n3. Fill with beef, cheese, lettuce, and salsa. \n4. Serve immediately.",
            strMealThumb: nil, strYoutube: nil,
            strIngredient1: "Beef Mince", strIngredient2: "Taco Shells",
            strIngredient3: "Taco Seasoning", strIngredient4: "Cheddar Cheese",
            strIngredient5: "Lettuce", strIngredient6: "Salsa",
            strIngredient7: nil, strIngredient8: nil, strIngredient9: nil, strIngredient10: nil,
            strIngredient11: nil, strIngredient12: nil, strIngredient13: nil, strIngredient14: nil,
            strIngredient15: nil, strIngredient16: nil, strIngredient17: nil, strIngredient18: nil,
            strIngredient19: nil, strIngredient20: nil,
            strMeasure1: "500g", strMeasure2: "8 shells", strMeasure3: "1 packet",
            strMeasure4: "1 cup", strMeasure5: "1 cup", strMeasure6: "1/2 cup",
            strMeasure7: nil, strMeasure8: nil, strMeasure9: nil, strMeasure10: nil,
            strMeasure11: nil, strMeasure12: nil, strMeasure13: nil, strMeasure14: nil,
            strMeasure15: nil, strMeasure16: nil, strMeasure17: nil, strMeasure18: nil,
            strMeasure19: nil, strMeasure20: nil
        ),

        RecipeDetail(
            idMeal: "5", strMeal: "Veggie Stir Fry",
            strCategory: "Vegetarian", strArea: "Chinese",
            strInstructions: "1. Heat oil in a wok. \n2. Add vegetables and stir fry on high heat for 5 minutes. \n3. Add soy sauce and sesame oil. \n4. Serve with noodles or rice.",
            strMealThumb: nil, strYoutube: nil,
            strIngredient1: "Broccoli", strIngredient2: "Bell Pepper",
            strIngredient3: "Snap Peas", strIngredient4: "Soy Sauce",
            strIngredient5: "Sesame Oil", strIngredient6: "Garlic", strIngredient7: "Noodles",
            strIngredient8: nil, strIngredient9: nil, strIngredient10: nil,
            strIngredient11: nil, strIngredient12: nil, strIngredient13: nil, strIngredient14: nil,
            strIngredient15: nil, strIngredient16: nil, strIngredient17: nil, strIngredient18: nil,
            strIngredient19: nil, strIngredient20: nil,
            strMeasure1: "1 head", strMeasure2: "2 large", strMeasure3: "1 cup",
            strMeasure4: "3 tbsp", strMeasure5: "1 tbsp", strMeasure6: "3 cloves", strMeasure7: "200g",
            strMeasure8: nil, strMeasure9: nil, strMeasure10: nil,
            strMeasure11: nil, strMeasure12: nil, strMeasure13: nil, strMeasure14: nil,
            strMeasure15: nil, strMeasure16: nil, strMeasure17: nil, strMeasure18: nil,
            strMeasure19: nil, strMeasure20: nil
        )
    ]

let mockDetail = mockDetails[0]
