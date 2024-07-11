//
//  CellView.swift
//  WB
//
//  Created by Al Stark on 11.07.2024.
//

import Foundation
import SwiftUI

struct CellView: View {
    
    var body: some View {
        ZStack {
            RoundedRectangle(cornerRadius: 30)
                .strokeBorder(style: StrokeStyle(lineWidth: 2, dash: [15]))
                
            Text(String(UnicodeScalar(Array(0x1F300...0x1F3F0).randomElement()!)!))
                .font(.largeTitle)
                .opacity(0.5)
                
        }
    }
}
