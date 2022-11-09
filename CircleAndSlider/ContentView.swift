//
//  ContentView.swift
//  CircleAndSlider
//
//  Created by XING ZHAO on 2022-11-07.
//

import SwiftUI

struct RectangelView: View {
    @State private var progress = 0.0
    var body: some View {
        VStack {
            ZStack {
                Rectangle()
                    .trim(from: 0, to: progress / 100.0)
                    .stroke(style: StrokeStyle(lineWidth: 10))
                    .frame(width: 300, height: 150)
                    .animation(.easeInOut, value: progress)
            }
            .frame(maxWidth: .infinity, maxHeight: .infinity)
            Stepper("Fill Rectangle", value: $progress, in: 0...100, step: 10)
        }
    }
}

struct ContentView: View {
    @State private var insertAge: CGFloat = 0.0
    
    var body: some View {
        VStack {
            ZStack {
                Circle()
                    .trim(from: 0, to: insertAge / 100.0)
                    .stroke(style: StrokeStyle(lineWidth: 10))
                    .padding()
                HStack {
                    Text("Value:")
                    Text("\(insertAge, specifier: "%.0f")%")
                        .animation(.easeInOut, value: insertAge)
                }
                .font(.title)
            }
            .frame(maxWidth: .infinity, maxHeight: .infinity)
            HStack {
                Slider(value: $insertAge, in: 0...100, step: 1)
                    .padding()
                    .font(.title2)
            }
            .padding()
        }
        .padding()
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
