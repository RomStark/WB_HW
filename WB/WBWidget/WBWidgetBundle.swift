//
//  WBWidgetBundle.swift
//  WBWidget
//
//  Created by Al Stark on 29.06.2024.
//

import WidgetKit
import SwiftUI

@main
struct WBWidgetBundle: WidgetBundle {
    var body: some Widget {
        WBWidget()
        WBWidgetLiveActivity()
    }
}
