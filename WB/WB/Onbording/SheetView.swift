//
//  SheetView.swift
//  WB
//
//  Created by Al Stark on 18.06.2024.
//

import SwiftUI

struct SheetView: View {
    @Binding var isSheetPresented: Bool
    var body: some View {
        VStack {
            Text("Новый экран")
                .font(.title)
                .padding()
            
            Button {
                isSheetPresented = false
            } label: {
                Text("Закрыть")
            }
        }
        .padding()
    }
}

struct SheetView_Previews: PreviewProvider {
    static var previews: some View {
        SheetView(isSheetPresented: .constant(false))
    }
}
