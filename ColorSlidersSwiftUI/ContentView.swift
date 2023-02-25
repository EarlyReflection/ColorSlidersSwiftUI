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
        
        ZStack {
            Color(UIColor.darkGray)
                .ignoresSafeArea()
    
            VStack(spacing: 60) {
                ColorView(red: red, green: green, blue: blue)
                
                VStack(spacing: 30) {
   //                 SliderView(value: $red, color: .red)
//                    SliderView(value: $green, color: .green)
//                    SliderView(value: $blue, color: .blue)
                }
                Spacer()
            }
            .padding()
        }
    }    
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

