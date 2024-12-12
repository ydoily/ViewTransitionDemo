//
//  AppRoute.swift
//  StateManagement
//
//  Created by Lucian on 2024/12/12.
//

import SwiftUI

class AppRouter: ObservableObject {
    @Published var path = NavigationPath()
    
    func navigate(to route: Route) {
        path.append(route)
    }
    
    func navigateBack() {
        path.removeLast()
    }
    
    func navigateToRoot() {
        path.removeLast(path.count)
    }
}
