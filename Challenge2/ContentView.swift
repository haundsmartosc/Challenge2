//
//  ContentView.swift
//  Challenge2
//
//  Created by Nguyễn Đức Hậu on 27/11/2024.
//

import SwiftUI

struct ContentView: View {
    
    @State private var level: Int = 3
    
    var body: some View {
        VStack {
            BarIndicator(level: $level, total: 6, conner: 5.0)
                .frame(width: 150, height: 60)
                .padding()
            ButtonControll(level: $level)
        }
        .padding()
    }
}



#Preview {
    ContentView()
}
