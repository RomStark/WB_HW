//
//  Contact.swift
//  WB
//
//  Created by Al Stark on 21.06.2024.
//

import Foundation

struct Contact: Hashable, Identifiable {
    let id = UUID()
    let name: String
    let isOnline: Bool
    let lastSeen: String
    let icon: String?
    let isStory: Bool
    let phoneNumber: String
}

extension Contact {
    static func mockContact() -> [Contact] {
        [
            .init(name: "первый", isOnline: true, lastSeen: "online", icon: nil, isStory: false, phoneNumber: "+7 999 999-99-99"),
            .init(name: "второй", isOnline: false, lastSeen: "yesterday", icon: nil, isStory: true, phoneNumber: "+7 999 888-99-94"),
            .init(name: "третий", isOnline: false, lastSeen: "3 hours ago", icon: nil, isStory: false, phoneNumber: "+7 999 926-33-19"),
            .init(name: "четрвертый", isOnline: false, lastSeen: "3 hours ago", icon: nil, isStory: false, phoneNumber: "+7 999 129-53-54"),
            .init(name: "пятый", isOnline: true, lastSeen: "3 hours ago", icon: nil, isStory: false, phoneNumber: "+7 999 649-32-21")
        ]
    }
}
