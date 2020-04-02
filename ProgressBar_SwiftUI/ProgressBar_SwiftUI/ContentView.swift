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
            Text("ProgressBar/Indicator will go here")
            
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
