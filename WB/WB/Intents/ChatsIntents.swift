//
//  ChatsIntents.swift
//  WB
//
//  Created by Al Stark on 29.06.2024.
//

import Foundation
import AppIntents

final class ChatsIntents: AppIntent {
    
    static var title: LocalizedStringResource = "Open app in WB"
    
    static var openAppWhenRun: Bool = true
    
    @MainActor
    func perform() async throws -> some IntentResult {
        Router.shared.move(to: .chats)
        return .result()
    }
}
