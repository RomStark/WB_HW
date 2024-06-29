//
//  Router.swift
//  WB
//
//  Created by Al Stark on 29.06.2024.
//

import SwiftUI

enum Tabs: Hashable {
    case contacts
    case chats
    case more
}

final class Router: ObservableObject {
    @Published var selectedTab: Tabs = .contacts
    
    static let shared: Router = .init()
    
    private init() {}
    
    func move(to tab: Tabs) {
        selectedTab = tab
    }
}
