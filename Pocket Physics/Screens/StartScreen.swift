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
            ScrollView {
                VStack(alignment: .leading, spacing: 24) {
                    
                    Text("Kategorien")
                        .font(.title2)
                        .bold()
                        .padding(.horizontal)

                    VStack(spacing: 12) {
                        categoryCard("Mechanics")
                        categoryCard("Thermodynamics")
                        categoryCard("Electrodynamics")
                    }
                    .padding(.horizontal)

                    Text("Favoriten")
                        .font(.title2)
                        .bold()
                        .padding(.horizontal)

                    VStack {
                        NavigationLink(destination: FavoritesScreen()) {
                            HStack {
                                Image(systemName: "star.fill")
                                    .foregroundColor(.yellow)
                                Text("Favorites")
                                Spacer()
                                Image(systemName: "chevron.right")
                                    .foregroundColor(.gray)
                            }
                            .padding()
                            .background(Color(.secondarySystemBackground))
                            .cornerRadius(12)
                        }
                    }
                    .padding(.horizontal)
                }
                .padding(.top)
            }
            .navigationTitle("Pocket Physics")
            .searchable(text: $searchText, prompt: "Search for topic or formula")
        }
    }

    private func categoryCard(_ title: String) -> some View {
        NavigationLink(destination: FormulaListScreen(category: title)) {
            HStack {
                Text(title)
                    .font(.headline)
                Spacer()
                Image(systemName: "chevron.right")
                    .foregroundColor(.gray)
            }
            .padding()
            .background(Color(.secondarySystemBackground))
            .cornerRadius(12)
        }
    }
}
