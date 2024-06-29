//
//  WBApp.swift
//  WB
//
//  Created by Al Stark on 17.06.2024.
//

import SwiftUI

@main
struct WBApp: App {
    @StateObject private var router: Router = .shared
    var body: some Scene {
        WindowGroup {
            MainTabView(router: router)
                .environmentObject(router)
        }
    }
}
