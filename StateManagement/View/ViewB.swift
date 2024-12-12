//
//  ViewB.swift
//  StateManagement
//
//  Created by Lucian on 2024/12/12.
//

import SwiftUI

struct ViewB: View {
    @EnvironmentObject private var router: AppRouter
    
    var body: some View {
        VStack {
            Text("View B")
            Button("Go to View C") {
                router.navigate(to: .viewC)
            }
        }
        .navigationTitle("View B")
    }
}
