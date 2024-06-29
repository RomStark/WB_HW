//
//  WBWidgetEntryView.swift
//  WB
//
//  Created by Al Stark on 29.06.2024.
//

import SwiftUI
import WidgetKit


struct WBWidgetEntryView : View {
    var entry: Provider.Entry
    @Environment(\.widgetFamily) var widgetFamily
    
    var body: some View {
        switch widgetFamily {
        case .systemSmall:
            SmallWidgetView(entry: entry)
        case .systemMedium:
            MediumWidgetView(entry: entry)
        case .systemLarge:
            LargeWidgetView(entry: entry)
        default:
            Text("default")
        }
    }
}
