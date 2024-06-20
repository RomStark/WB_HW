//
//  WBApp.swift
//  WB
//
//  Created by Al Stark on 17.06.2024.
//

import SwiftUI

@main
struct WBApp: App {
    @StateObject private var router: Router = .init()
    var body: some Scene {
        WindowGroup {
            MainTabView()
                .environmentObject(router)
        }
    }
}
