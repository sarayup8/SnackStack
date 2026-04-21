//
//  DetailView.swift
//  Snack Stack
//
//  Created by Sarayu Pesala on 4/20/26.
//

import SwiftUI

struct DetailView: View {
    let recipeId: String
    
    @State private var recipe: RecipeDetail? = nil
    @State private var isLoading = false
    @State private var errorMessage: String? = nil
    @State private var showInstructions = false
    
    private let service = RecipeService()
    
    var body: some View {
        Group {
            if isLoading {
                ProgressView()
            } else if let recipe = recipe {
                DetailContent(recipe: recipe, showInstructions: $showInstructions)
            } else if let error = errorMessage {
                Text(error)
            } else {
                Text("Recipe not found")
            }
        }
        .navigationBarTitleDisplayMode(.inline)
        .task { await loadRecipe() }
    }
    
    private func loadRecipe() async {
        isLoading = true
        do {
            recipe = try await service.getRecipeById(recipeId)
        } catch {
            // API is down — find the mock recipe that matches the ID
            recipe = mockDetails.first { $0.id == recipeId } ?? mockDetails[0]
        }
        isLoading = false
    }
    
    struct DetailContent: View {
        let recipe: RecipeDetail
        @Binding var showInstructions: Bool
        
        var body: some View {
            ZStack {
                LinearGradient(
                    colors: [.pink.opacity(0.3), .yellow.opacity(0.4)],
                    startPoint: .top,
                    endPoint: .bottom
                )
                .ignoresSafeArea()
                
                
                ScrollView {
                    VStack(alignment: .leading, spacing: 16) {
                        
                        AsyncImage(url: recipe.thumbnailURL) { image in
                            image
                                .resizable()
                                .aspectRatio(contentMode: .fill)
                        } placeholder: {
                            Color(.systemGray5)
                        }
                        .frame(height: 200)
                        .clipped()
                        
                        VStack(alignment: .leading, spacing: 12) {
                            
                            Text(recipe.strMeal)
                                .font(.title.bold())
                            
                            if let area = recipe.strArea {
                                Text(area)
                                    .foregroundStyle(.secondary)
                            }
                            
                            Divider()
                            
                            Text("Ingredients")
                                .font(.headline)
                            
                            ForEach(recipe.ingredients) { ingredient in
                                HStack {
                                    Text(ingredient.name)
                                    Spacer()
                                    Text(ingredient.measure)
                                        .foregroundStyle(.secondary)
                                }
                            }
                            
                            Divider()
                            
                            Button(showInstructions ? "Hide Instructions" : "Show Instructions") {
                                showInstructions.toggle()
                            }
                            
                            if showInstructions, let instructions = recipe.strInstructions {
                                Text(instructions)
                                    .font(.body)
                            }
                            
                            if let ytURL = recipe.youtubeURL {
                                Link("Watch on YouTube", destination: ytURL)
                                    .foregroundStyle(.red)
                            }
                        }
                        .padding()
                    }
                }
            }
        }
    }
}

#Preview { NavigationStack { DetailView(recipeId: "1") } }
