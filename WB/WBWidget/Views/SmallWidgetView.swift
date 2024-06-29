//
//  SmallWidgetView.swift
//  WB
//
//  Created by Al Stark on 29.06.2024.
//

import WidgetKit
import SwiftUI

struct SmallWidgetView: View {
    var entry: SimpleEntry
    
    var body: some View {
        VStack {
            Text(entry.contacts[0].name)
                .font(.system(size: 15))
                .foregroundColor(.blue)
            
            Text(entry.contacts[0].phoneNumber)
                .font(.system(size: 15))
                .foregroundColor(.blue)
        }
    }
}
