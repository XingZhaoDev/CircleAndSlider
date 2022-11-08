//
//  ContentView.swift
//  CircleAndSlider
//
//  Created by XING ZHAO on 2022-11-07.
//

import SwiftUI

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
            Slider(value: $insertAge, in: 0...100, step: 1)
                .padding()
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
