//
//  SliderView.swift
//  ColorSlidersSwiftUI
//
//  Created by Vladimir Dvornikov on 24.02.2023.
//

import SwiftUI

struct SliderView: View {
    @State private var value: Double = 125
    let color: Color
    @State private var textFieldString: String = "125"
    @State var textFieldDouble: Double = 125
    
    var body: some View {
        
        HStack {
            Text("\(lround(textFieldDouble))")
                .frame(width: 35, alignment: .leading)
                .foregroundColor(color)
            Slider(value: $textFieldDouble, in: 0...255, step: 1)
                .tint(color)
//            TextField("", text: $textFieldString) {
//                stringToDouble(string: textFieldString)
//            }
//            .frame(width: 60, alignment: .trailing)
//            .textFieldStyle(.roundedBorder)
        }
    }
    
    private func stringToDouble(string: String) {
        guard let stringToInt = Int(string) else { return }
        textFieldDouble = Double(stringToInt)
    }
}

struct SliderView_Previews: PreviewProvider {
    static var previews: some View {
        SliderView(color: .blue)
    }
}
