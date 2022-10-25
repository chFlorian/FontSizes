// Created by Florian Schweizer on 01.08.22

import SwiftUI

struct FontList: View {
    var body: some View {
        VStack {
            Group {
                Text("Large Title (34)")
                    .font(.largeTitle)
                
                Text("Title (28)")
                    .font(.title)
                
                Text("Title 2 (22)")
                    .font(.title2)
                
                Text("Title 3 (20)")
                    .font(.title3)
            }
            
            Text("Body (17)")
                .font(.body)
            
            Group {
                Text("Headline (17)")
                    .font(.headline)
                
                Text("Callout (16)")
                    .font(.callout)
                
                Text("Subheadline (15)")
                    .font(.subheadline)
            }
            
            Text("Footnote (13)")
                .font(.footnote)
            
            Group {
                Text("Caption (12)")
                    .font(.caption)
                
                Text("Caption 2 (11)")
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
        .frame(width: 200, height: 280)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        FontList()
    }
}
