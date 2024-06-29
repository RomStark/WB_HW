//
//  WBWidget.swift
//  WBWidget
//
//  Created by Al Stark on 29.06.2024.
//

import WidgetKit
import SwiftUI
import Intents



struct WBWidget: Widget {
    let kind: String = "WBWidget"

    var body: some WidgetConfiguration {
        StaticConfiguration(kind: kind, provider: Provider()) { entry in
            WBWidgetEntryView(entry: entry)
        }
        .configurationDisplayName("My Widget")
        .description("This is an example widget.")
    }
}

struct WBWidget_Previews: PreviewProvider {
    static var previews: some View {
        WBWidgetEntryView(entry: SimpleEntry(date: Date(), contacts: Contact.mockContact()))
            .previewContext(WidgetPreviewContext(family: .systemLarge))
    }
}
