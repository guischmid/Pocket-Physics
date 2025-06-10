//
//  FormulaListScreen.swift
//  Pocket Physics
//
//  Created by Guilherme on 10.06.25.
//


import SwiftUI

struct FormulaListScreen: View {
    let category: String
    
    var body: some View {
        List {
            NavigationLink("Formula 1", destination: FormulaDetailScreen(formulaName: "Formula 1"))
            NavigationLink("Formula 2", destination: FormulaDetailScreen(formulaName: "Formula 2"))
        }
        .navigationTitle(category)
    }
}
