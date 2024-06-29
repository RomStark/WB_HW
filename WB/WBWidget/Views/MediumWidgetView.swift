//
//  MediumWidgetView.swift
//  WB
//
//  Created by Al Stark on 29.06.2024.
//

import WidgetKit
import SwiftUI

struct MediumWidgetView: View {
    
    var entry: SimpleEntry
    
    var body: some View {
        VStack(spacing: 15, content: {
            ForEach(0..<3) { number in
                HStack {
                    Text(entry.contacts[number].name)
                        .padding(.horizontal)
                    Spacer()
                    Text(entry.contacts[number].phoneNumber)
                        .padding(.horizontal)
                    Spacer()
                    Text(entry.contacts[number].isOnline ? "Online" : "Offline")
                        .foregroundColor(entry.contacts[number].isOnline ? .blue : .red)
                }
            }
        })
        .padding(.trailing, 5)
    }
}
