//
//  ViewA.swift
//  StateManagement
//
//  Created by Lucian on 2024/12/12.
//

import SwiftUI

struct ViewA: View {
    @EnvironmentObject private var router: AppRouter
    
    var body: some View {
        VStack {
            Text("View A")
            Button("Go to View B") {
                router.navigate(to: .viewB)
            }
        }
        .navigationTitle("View A")
    }
}
