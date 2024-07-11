//
//  ScrollView.swift
//  WB
//
//  Created by Al Stark on 11.07.2024.
//

import Foundation
import SwiftUI

struct InfiniteScrollView: View {
    @State private var cellsCount: Int = 50
    
    var body: some View {
        ScrollView {
            LazyVGrid(columns: [
                GridItem()
            ], spacing: 15) {
                ForEach(0..<cellsCount, id: \.self) { index in
                    Group {
                        switch Bool.random() {
                        case true:
                            switch Bool.random() {
                            case true:
                                vlLayout
                            case false:
                                vrLayout
                            }
                        case false:
                            switch Bool.random() {
                            case true:
                                hlLayout
                            case false:
                                hrLayout
                            }
                        }
                    }
                    .onAppear {
                        if index == cellsCount - 1 {
                            cellsCount += 50
                        }
                    }
                }
            }
            .padding()
        }
    }
    
    private var vlLayout: some View {
        VStack {
            HStack {
                CellView().frame(height: 150)
                CellView().frame(height: 150)
            }
            CellView().frame(height: 150)
        }
    }
    
    private var hlLayout: some View {
        HStack {
            CellView().frame(height: 300)
            VStack {
                CellView()
                CellView()
            }
        }
    }
    
    private var vrLayout: some View {
        VStack {
            CellView().frame(height: 150)
            HStack {
                CellView().frame(height: 150)
                CellView().frame(height: 150)
            }
        }
    }
    
    private var hrLayout: some View {
        HStack {
            VStack {
                CellView()
                CellView()
            }
            CellView().frame(height: 300)
        }
    }
}
