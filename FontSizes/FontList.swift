// Created by Florian Schweizer on 01.08.22

import SwiftUI

struct FontList: View {
    var body: some View {
        VStack(alignment: .leading) {
            Group {
                HighlightedText(text: "Large Title (34)", copiedValue: ".font(.largeTitle)")
                    .font(.largeTitle)
                
                HighlightedText(text: "Title (28)", copiedValue: ".font(.title)")
                    .font(.title)
                
                HighlightedText(text: "Title 2 (22)", copiedValue: ".font(.title2)")
                    .font(.title2)
                
                HighlightedText(text: "Title 3 (20)", copiedValue: ".font(.title3)")
                    .font(.title3)
            }
            
            HighlightedText(text: "Body (17)", copiedValue: ".font(.body)")
                .font(.body)
            
            Group {
                HighlightedText(text: "Headline (17)", copiedValue: ".font(.headline)")
                    .font(.headline)
                
                HighlightedText(text: "Callout (16)", copiedValue: ".font(.callout)")
                    .font(.callout)
                
                HighlightedText(text: "Subheadline (15)", copiedValue: ".font(.subheadline)")
                    .font(.subheadline)
            }
            
            HighlightedText(text: "Footnote (13)", copiedValue: ".font(.footnote)")
                .font(.footnote)
            
            Group {
                HighlightedText(text: "Caption (12)", copiedValue: ".font(.caption)")
                    .font(.caption)
                
                HighlightedText(text: "Caption 2 (11)", copiedValue: ".font(.caption2)")
                    .font(.caption2)
            }
            
            Link("Made by Flo writes Code",
                 destination: URL(string: "https://twitter.com/FloWritesCode")!)
            .foregroundColor(.secondary)
            
            Button("Quit") {
                NSApplication.shared.terminate(nil)
            }
        }
        .padding(8)
        .frame(width: 200)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        FontList()
    }
}
