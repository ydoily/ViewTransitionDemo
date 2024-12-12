//
//  ViewD.swift
//  StateManagement
//
//  Created by Lucian on 2024/12/12.
//

import SwiftUI

struct ViewD: View {
    @EnvironmentObject private var router: AppRouter
    
    var body: some View {
        VStack {
            Text("Settings View (D)")
            Button("Go Back") {
                router.navigateBack()
            }
            .padding()
            
            Button("Return to Home (A)") {
                router.navigateToRoot()
            }
            .padding()
            
            Button("Go to A (Alternative)") {
                router.navigateToRoot()
                router.navigate(to: .viewA)
            }
            .padding()
        }
        .navigationTitle("Settings")
    }
}
