//
//  LargeWidgetView.swift
//  WB
//
//  Created by Al Stark on 29.06.2024.
//

import WidgetKit
import SwiftUI

struct LargeWidgetView: View {
    var entry: SimpleEntry
    
    var body: some View {
        VStack(spacing: 25, content: {
            ForEach(0..<5) { number in
                HStack {
                    Text(entry.contacts[number].name)
                        
                    Spacer()
                    Text(entry.contacts[number].phoneNumber)
                        
                    Spacer()
                    Text(entry.contacts[number].isOnline ? "Online" : "Offline")
                        .foregroundColor(entry.contacts[number].isOnline ? .blue : .red)
                }
            }
        })
        .padding(.horizontal, 5)
    }
}
