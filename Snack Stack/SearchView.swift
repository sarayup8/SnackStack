//
//  SearchView.swift
//  Snack Stack
//
//  Created by Sarayu Pesala on 4/19/26.
//

import SwiftUI
struct SearchView: View {
    
    @State private var query = ""
    @State private var recipes: [RecipeSummary] = mockRecipes
    @State private var isLoading = false
    @State private var errorMessage: String? = nil
    @State private var sortAlpha = false
    @State private var selectedCategory = "All"
    
    private let service = RecipeService()
    private let categories = ["All", "Beef", "Chicken", "Dessert", "Vegetarian", "Seafood"]
    
    // Sort the results alphabetically
    var displayedRecipes: [RecipeSummary] {
        let filtered = selectedCategory == "All" ? recipes : recipes.filter { recipe in
                recipe.strMeal.contains(selectedCategory)
            }
        return sortAlpha ? filtered.sorted { first, second in
                first.strMeal < second.strMeal
            }
            : filtered
    }
    
    var body: some View {
        ZStack {
            LinearGradient(
                colors: [.pink.opacity(0.3), .yellow.opacity(0.4)],
                startPoint: .top,
                endPoint: .bottom
            )
            .ignoresSafeArea()
            
            VStack {
                VStack(spacing: 12) {
                    TextField("Search recipes", text: $query)
                        .textFieldStyle(.roundedBorder)
                        .onSubmit { Task { await search() } }
                    
                    Picker("Category", selection: $selectedCategory) {
                        ForEach(categories, id: \.self) { category in
                            Text(category).tag(category)
                            }
                                }
                                .pickerStyle(.segmented)
                    
                    Toggle("Sort A–Z", isOn: $sortAlpha)
                    
                    Button("Search") {
                        Task { await search() }
                    }
                    .padding(.horizontal, 32)
                    .padding(.vertical, 12)
                    .background(.pink.opacity(0.8))
                    .foregroundStyle(.white)
                    .clipShape(RoundedRectangle(cornerRadius: 12))
                    .font(.headline)
                    .disabled(query.isEmpty)
                }
                .padding()
                
                Divider()
                
                if isLoading {
                    ProgressView().padding()
                } else if let error = errorMessage {
                    Text(error).foregroundStyle(.secondary).padding()
                } else {
                    List(displayedRecipes) { recipe in
                        NavigationLink(destination: DetailView(recipeId: recipe.id)) {
                            RecipeRow(recipe: recipe)
                        }
                    }
                    .listStyle(.plain)
                    .scrollContentBackground(.hidden)
                }
            }
            .navigationTitle("Search")
        }
    }
    private func search() async {
        isLoading = true
        errorMessage = nil
        do {
            recipes = try await service.searchRecipes(query: query)
        } catch {
            errorMessage = error.localizedDescription
        }
        isLoading = false
    }
        
}
struct RecipeRow: View {
    let recipe: RecipeSummary
    var body: some View {
        HStack(spacing: 12) {
            AsyncImage(url: recipe.thumbnailURL) { image in
                image
                    .resizable()
                    .aspectRatio(contentMode: .fill)
            } placeholder: {
                Color(.systemGray5)
            }
            .frame(width: 56, height: 56)
            .clipShape(RoundedRectangle(cornerRadius: 8))
            Text(recipe.strMeal)
                .font(.body)
        }
    }
}

#Preview { NavigationStack { SearchView() } }
