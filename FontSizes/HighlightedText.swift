// Created by Florian Schweizer on 26.10.22

import SwiftUI

struct HighlightedText: View {
    let text: String
    let copiedValue: String
    @State private var isHovered: Bool = false
    
    var body: some View {
        Text(text)
            .foregroundColor(isHovered ? .primary : .secondary)
            .onHover { hovered in
                withAnimation {
                    isHovered = hovered
                }
            }
            .onTapGesture {
                NSPasteboard.general.clearContents()
                NSPasteboard.general.setString(copiedValue, forType: .string)
            }
    }
}
