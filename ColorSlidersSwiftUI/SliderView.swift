//
//  SliderView.swift
//  ColorSlidersSwiftUI
//
//  Created by Vladimir Dvornikov on 24.02.2023.
//

import SwiftUI

struct SliderView: View {
    @Binding var sliderValue: Double
    @State private var text: String = ""
    let color: Color
    
    var body: some View {
        HStack{
            Text("\(lround(sliderValue))")
                .frame(width: 35, alignment: .leading)
                .foregroundColor(color)
            Slider(value: $sliderValue, in: 0...255, step: 1) 
                .tint(color)
                .onChange(of: sliderValue) { newValue in
                    text = String(lround(sliderValue))
                }
            TextFieldView(text: $text, value: $sliderValue, color: color)
        }
        .onAppear {
            text = String(lround(sliderValue))
        }

    }
    
    
}

struct SliderView_Previews: PreviewProvider {
    static var previews: some View {
        ZStack {
            Color(.gray)
            SliderView(sliderValue: .constant(255), color: .blue)
        }
    }
}
