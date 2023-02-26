//
//  ContentView.swift
//  ColorSlidersSwiftUI
//
//  Created by Vladimir Dvornikov on 23.02.2023.
//

import SwiftUI

struct ContentView: View {
    @State var red = Double.random(in: 0...255)
    @State var green = Double.random(in: 0...255)
    @State var blue = Double.random(in: 0...255)
    
    var body: some View {
        
        VStack(spacing: 40) {
            ColorView(red: red, green: green, blue: blue)
            VStack(spacing: 20) {
                SliderView(sliderValue: $red, color: .red)
                SliderView(sliderValue: $green, color: .green)
                SliderView(sliderValue: $blue, color: .blue)
            }
            Spacer()
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

