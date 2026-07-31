//
//  ContentView.swift
//  Simon
//
//  Created by Pamela VanLeirsburg on 7/22/26.
//

import SwiftUI
import Combine

struct ContentView: View {
    @State private var colorDisplay = [ColorDisplay(color: .green), ColorDisplay(color: .red), ColorDisplay(color: .yellow), ColorDisplay(color: .blue)]
    @State private var flash = [false, false, false, false]
    @State private var timer = Timer.publish(every: 0.5, on: .main, in: .common).autoconnect()
    @State private var index = 0
    @State private var sequence = [Int]()
    
    var body: some View {
        ZStack {
            Color.black
                .ignoresSafeArea()
            VStack {
                Text("simon")
                    .font(.system(size: 72))
                    .foregroundColor(.white)
                
                HStack {
                    colorDisplay[0]
                        .opacity(flash[0] ? 1: 0.4)
                        .onTapGesture {
                            flashColorDisplay(index: 0)
                        }
                    colorDisplay[1]
                        .opacity(flash[1] ? 1: 0.4)
                        .onTapGesture {
                            flashColorDisplay(index: 1)
                        }
                }
                .padding()
                HStack {
                    colorDisplay[2]
                        .opacity(flash[2] ? 1: 0.4)
                        .onTapGesture {
                            flashColorDisplay(index: 2)
                        }
                    colorDisplay[3]
                        .opacity(flash[3] ? 1: 0.4)
                        .onTapGesture {
                            flashColorDisplay(index: 3)
                        }
                }
            }
            .preferredColorScheme(.dark)
            .onReceive(timer) { _ in
                
                    if index < sequence.count {
                        flashColorDisplay(index: sequence[index])
                        index += 1
                    }
                    else {index = 0
                        
                        sequence.append(Int.random(in: 0...3))
                    }
            }
        }
    }
    
    func flashColorDisplay(index: Int) {
        flash[index].toggle()
        withAnimation(.easeInOut(duration: 0.5)) {
            flash[index].toggle()
            
            
        }
    }
}

#Preview {
    ContentView()
}
            

