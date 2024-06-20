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
