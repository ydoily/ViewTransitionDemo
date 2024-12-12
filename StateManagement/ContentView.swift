//
//  ContentView.swift
//  StateManagement
//
//  Created by Lucian on 2024/12/12.
//

import SwiftUI
import Inject

struct ContentView: View {
    @ObserveInjection var inject
    @StateObject private var router = AppRouter()
    
    var body: some View {
        NavigationStack(path: $router.path) {
            ViewA()
                .navigationDestination(for: Route.self) { route in
                    switch route {
                        case .viewA:
                            ViewA()
                        case .viewB:
                            ViewB()
                        case .viewC:
                            ViewC()
                        case .viewD:
                            ViewD()
                    }
                }
        }
        .environmentObject(router)
        .enableInjection()
    }
}
