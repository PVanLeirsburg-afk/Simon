//
//  ColorDisplay.swift
//  Simon
//
//  Created by Pamela VanLeirsburg on 7/31/26.
//

import SwiftUI

struct ColorDisplay: View {
    let color: Color
    var body: some View {
        RoundedRectangle(cornerRadius: 25.0)
            .fill(color)
            .frame(width: 100, height: 100, alignment: .center)
            .padding()
    }
}

#Preview {
    ColorDisplay(color: .green)
}
