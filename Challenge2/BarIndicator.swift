//
//  BarIndicator.swift
//  Challenge2
//
//  Created by Nguyễn Đức Hậu on 27/11/2024.
//

import SwiftUI

struct BarIndicator: View {
    @Binding var level: Int
    var total: Int
    var conner: Float
    
    var body: some View {
        HStack(alignment: .bottom, spacing: 8) {
            ForEach(0..<total, id: \.self) { index in
                RoundedRectangle(cornerRadius: 5)
                    .fill(colorLevel(index))
                    .frame(width: 30, height: CGFloat(20 + index * 15))
                    .onTapGesture {
                        level = index + 1
                    }
                    .animation(.linear(duration: 0.3), value: level)
            }
        }
        .frame(maxWidth: .infinity)
    }
    
    private func colorLevel(_ index: Int) -> Color {
        if index < level {
            if level <= 2 {
                return Color.red
            } else if level <= 4 {
                return Color.yellow
            } else {
                return Color.green
            }
        } else {
            return Color.gray.opacity(0.3)
        }
    }}

#Preview {
    BarIndicator(level: .constant(3), total: 6, conner: 5.0)
}
