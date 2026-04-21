//
//  HomeView.swift
//  Snack Stack
//
//  Created by Sarayu Pesala on 4/18/26.
//

import SwiftUI

struct HomeView: View {

    // Pre-filled with fake data so the app works without the API
    @State private var randomRecipe: RecipeDetail? = mockDetail
    @State private var isLoading = false
    @State private var errorMessage: String? = nil


    private let service = RecipeService()

    var body: some View {
        NavigationStack {
            ZStack {
                LinearGradient(
                    colors: [.pink.opacity(0.3), .yellow.opacity(0.4)],
                    startPoint: .top,
                    endPoint: .bottom
                )
                .ignoresSafeArea()
                
                VStack(spacing: 20) {
                    
                    Text("SnackStack")
                        .font(.system(size: 50, weight: .bold))
                        .foregroundStyle(.black)
                        .padding(.top, 10)
                                        
                    
                    // Show loading spinner, the recipe card, or an error
                    if isLoading {
                        ProgressView("Finding a recipe")
                    } else if let recipe = randomRecipe {
                        NavigationLink(destination: DetailView(recipeId: recipe.id)) {
                            RecipeCard(recipe: recipe)
                        }
                        .buttonStyle(.plain)
                    } else if let error = errorMessage {
                        Text(error).foregroundStyle(.secondary)
                    }
                    
                    Button("Shuffle") {
                        Task { await loadRandom() }
                    }
                    .padding(.horizontal, 32)
                    .padding(.vertical, 12)
                    .background(.pink.opacity(0.8))
                    .foregroundStyle(.white)
                    .clipShape(RoundedRectangle(cornerRadius: 12))
                    .font(.headline)
                    
                    NavigationLink("Search Recipes", destination: SearchView())
                        .padding(.horizontal, 32)
                        .padding(.vertical, 12)
                        .background(.yellow.opacity(0.8))
                        .foregroundStyle(.black)
                        .clipShape(RoundedRectangle(cornerRadius: 12))
                        .font(.headline)
                }
                .padding()
                .navigationBarHidden(true);
            
        
            }
            .task { await loadRandom() }
        }
    }

    private func loadRandom() async {
        isLoading = true
        do {
            randomRecipe = try await service.getRandomRecipe()
        } catch {
            errorMessage = error.localizedDescription
        }
        isLoading = false
    }
}

struct RecipeCard: View {
    let recipe: RecipeDetail

    var body: some View {
        VStack(alignment: .leading, spacing: 8) {
            AsyncImage(url: recipe.thumbnailURL) { image in
                image
                    .resizable()
                    .aspectRatio(contentMode: .fill)
            } placeholder: {
                Color(.systemGray5)
            }
            .frame(height: 200)
            .clipShape(RoundedRectangle(cornerRadius: 12))

            Text(recipe.strMeal)
                .font(.title3.bold())

            if let category = recipe.strCategory {
                Text(category)
                    .foregroundStyle(.secondary)
            }
        }
        .padding()
        .background(.white.opacity(0.8))
        .clipShape(RoundedRectangle(cornerRadius: 16))
    }
}
#Preview { HomeView() }
