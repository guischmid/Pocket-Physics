//
//  StartScreen.swift
//  Pocket Physics
//
//  Created by Guilherme on 10.06.25.
//


import SwiftUI

struct StartScreen: View {
    @State private var searchText: String = ""
    var body: some View {
        NavigationStack {
            List {
                NavigationLink("Mechanics", destination: FormulaListScreen(category: "Mechanics"))
                NavigationLink("Thermodynamics", destination: FormulaListScreen(category: "Thermodynamics"))
                NavigationLink("Electrodynamics", destination: FormulaListScreen(category: "Elektrodynamics"))
                
                Section {
                    NavigationLink("⭐ Favorites", destination: FavoritesScreen())
                }
            }
            .searchable(text: $searchText, prompt: "Search for topic or formula")

            .navigationTitle("Pocket Physics")
        }
    }
}
