//
//  TextFieldView.swift
//  ColorSlidersSwiftUI
//
//  Created by Vladimir Dvornikov on 26/02/2023.
//

import SwiftUI

struct TextFieldView: View {
    @Binding var text: String
    @Binding var value: Double
    @State private var showAlert = false
    let color: Color
    
    var body: some View {
        TextField("", text: $text) { chekValue()}
            .textFieldStyle(.roundedBorder)
            .foregroundColor(color)
            .frame(width: 50)
            .alert("Wrong format", isPresented: $showAlert,actions: {},
                   message: {Text("Type number from 0 to 255")})
    }
    
    private func chekValue() {
        if let textToInt = Int(text) {
            switch textToInt {
            case 0...225: value = Double(textToInt)
            default: showAlert = true
            }
        }
        showAlert = true
    }
    
}

struct TextFieldView_Previews: PreviewProvider {
    static var previews: some View {
        ZStack {
            Color(.gray)
            TextFieldView(text: .constant("255"), value: .constant(255), color: .blue)
        }
    }
}
