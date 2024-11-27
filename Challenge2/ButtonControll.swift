//
//  ButtonControll.swift
//  Challenge2
//
//  Created by Nguyễn Đức Hậu on 27/11/2024.
//

import SwiftUI

struct ButtonControll: View {
    @Binding var level: Int
    var body: some View {
        HStack(spacing: 10) {
            Button(action: {
                if level > 0 {
                    level -= 1
                }
            }) {
                Image(systemName: "minus.circle")
                    .font(.largeTitle)
                    .foregroundColor(.red)
            }
            
            Button(action: {
                if level < 6 {
                    level += 1
                }
            }) {
                Image(systemName: "plus.circle")
                    .font(.largeTitle)
                    .foregroundColor(.green)
            }
        }
    }
    
}

#Preview {
    ButtonControll(level: .constant(3))
}
