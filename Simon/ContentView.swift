//
//  ContentView.swift
//  Simon
//
//  Created by Pamela VanLeirsburg on 7/22/26.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            Color.black
                .ignoresSafeArea()

            Text("simon")
                .font(.system(size: 72))
                .foregroundColor(.white)
        }
            .preferredColorScheme(.dark)
    }
}

#Preview {
    ContentView()
}
