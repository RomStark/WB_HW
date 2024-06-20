//
//  MainTabView.swift
//  WB
//
//  Created by Al Stark on 21.06.2024.
//

import SwiftUI

enum Tabs: Hashable {
    case contacts
    case chats
    case more
}

final class Router: ObservableObject {
    @Published var selectedTab: Tabs = .contacts
}

struct MainTabView: View {
    @ObservedObject var router: Router = .init()
    var body: some View {
        TabView(selection: $router.selectedTab) {
            ContactsScreen().tabItem {Label("Контакты", systemImage: "person.2")}.tag(Tabs.contacts)
            ChatsScreen().tabItem { Label("Чаты", systemImage: "message") }.tag(Tabs.chats)
            ProfileScreen().tabItem { Label("Еще", image: "menu") }.tag(Tabs.more)
        }
    }
}


struct MainTabView_Previews: PreviewProvider {
    static var previews: some View {
        MainTabView()
    }
}
