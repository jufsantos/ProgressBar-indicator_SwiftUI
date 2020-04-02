//
//  ContentView.swift
//  ProgressBar_SwiftUI
//
//  Created by Julia Santos on 02/04/20.
//  Copyright © 2020 Julia Santos. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    @State private var sliderValue: Double = 0
    private let maxValue: Double = 10
    
    var body: some View {
        VStack {
            ProgressBar(value: $sliderValue.wrappedValue,
                    maxValue: self.maxValue,
                    foregroundColor: .green)
            .frame(height: 10)
            .padding(30)
            
            Spacer()
            
            Slider(value: $sliderValue, in: 0...maxValue).padding(30)
            
        }
    }
}

struct ProgressBar: View {
    private let value: Double
    private let maxValue: Double
    private let backgroundEnabled: Bool
    private let backgroundColor: Color
    private let foregroundColor: Color
    
    init(value: Double, maxValue: Double, backgroundEnabled: Bool = true, backgroundColor: Color = Color(UIColor(red: 245/255,
    green: 245/255,
    blue: 245/255,
    alpha: 1.0)), foregroundColor: Color = Color.black) {
        self.value = value
        self.maxValue = maxValue
        self.backgroundEnabled = backgroundEnabled
        self.backgroundColor = backgroundColor
        self.foregroundColor = foregroundColor
    }
    var body: some View{
        
        ZStack {
            
            GeometryReader { geometryReader in
                
                if self.backgroundEnabled {
                    Capsule()
                        .foregroundColor(self.backgroundColor)
                }
                
                Capsule()
                    .frame(width: self.progress(value: self.value, maxValue: self.maxValue, width: geometryReader.size.width))
                    .foregroundColor(self.foregroundColor)
                    .animation(.easeIn)
            }
        }
    }
    private func progress(value: Double, maxValue: Double, width: CGFloat) -> CGFloat {
        let percentage = value/maxValue
        return width * CGFloat(percentage)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
