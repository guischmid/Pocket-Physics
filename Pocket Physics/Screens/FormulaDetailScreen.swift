//
//  FormulaDetailScreen.swift
//  Pocket Physics
//
//  Created by Guilherme on 10.06.25.
//


import SwiftUI

struct FormulaDetailScreen: View {
    let formulaName: String

    var body: some View {
        VStack(alignment: .leading, spacing: 16) {
            Text(formulaName)
                .font(.largeTitle)
                .bold()
            
            Text("Dummy")
                .font(.body)
        }
        .padding()
        .navigationTitle("Formula")
    }
}
