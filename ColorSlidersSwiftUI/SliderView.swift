//
//  SliderView.swift
//  ColorSlidersSwiftUI
//
//  Created by Vladimir Dvornikov on 24.02.2023.
//

import SwiftUI

struct SliderView: View {
    @Binding var sliderValue: Double
    let color: Color
    
    var body: some View {
        HStack{
            Text("\(lround(sliderValue))")
                .frame(width: 35, alignment: .leading)
                .foregroundColor(.white)
            Slider(value: $sliderValue, in: 0...255, step: 1)
                .tint(color)
        }
    }
    
    
}

struct SliderView_Previews: PreviewProvider {
    static var previews: some View {
        SliderView(sliderValue: .constant(255), color: .blue)
    }
}
