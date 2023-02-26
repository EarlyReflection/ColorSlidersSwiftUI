//
//  ColorView.swift
//  ColorSlidersSwiftUI
//
//  Created by Vladimir Dvornikov on 24.02.2023.
//

import SwiftUI

struct ColorView: View {
    let red: Double
    let green: Double
    let blue: Double
    
    var body: some View {
        Color(red: red / 255, green: green / 255, blue: blue / 255)
            .frame(height: UIScreen.main.bounds.width / 2)
            .cornerRadius(20)
            .overlay(
                RoundedRectangle(cornerRadius: 20)
                    .stroke(Color(.white), lineWidth: 3)
            )
    }
}

struct ColorView_Previews: PreviewProvider {
    static var previews: some View {
        ColorView(red: 255, green: 100, blue: 100)
    }
}
