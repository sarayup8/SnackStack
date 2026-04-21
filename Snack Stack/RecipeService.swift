//
//  RecipeService.swift
//  Snack Stack
//
//  Created by Sarayu Pesala on 4/10/26.
//

import Foundation

class RecipeService {

    private let baseURL = "https://www.themealdb.com/api/json/v1/1"
    
    // Searches for recipes based on a user query string
    func searchRecipes(query: String) async throws -> [RecipeSummary] {
        let encoded = query.addingPercentEncoding(withAllowedCharacters: .urlQueryAllowed) ?? query
        let url = URL(string: "\(baseURL)/search.php?s=\(encoded)")!
        let (data, _) = try await URLSession.shared.data(from: url)
        let decoded = try JSONDecoder().decode(RecipeSearchResponse.self, from: data)
        return decoded.meals ?? []
    }

    // Fetches detailed information for a specific recipe using its ID
    func getRecipeById(_ id: String) async throws -> RecipeDetail? {
        let url = URL(string: "\(baseURL)/lookup.php?i=\(id)")!
        let (data, _) = try await URLSession.shared.data(from: url)
        let decoded = try JSONDecoder().decode(RecipeDetailResponse.self, from: data)
        return decoded.meals?.first
    }

    // Fetches a random recipe from the API
    func getRandomRecipe() async throws -> RecipeDetail? {
        let url = URL(string: "\(baseURL)/random.php")!
        let (data, _) = try await URLSession.shared.data(from: url)
        let decoded = try JSONDecoder().decode(RecipeDetailResponse.self, from: data)
        return decoded.meals?.first
    }
}
