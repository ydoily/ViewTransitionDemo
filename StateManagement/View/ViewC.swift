//
//  ViewC.swift
//  StateManagement
//
//  Created by Lucian on 2024/12/12.
//

import SwiftUI

struct ViewC: View {
    @EnvironmentObject private var router: AppRouter
    
    var body: some View {
        Text("View C")
            .navigationTitle("View C")
            .toolbar {
                ToolbarItem(placement: .navigationBarTrailing) {
                    Button(action: {
                        router.navigate(to: .viewD)
                    }) {
                        Image(systemName: "gear")
                    }
                }
            }
    }
}
