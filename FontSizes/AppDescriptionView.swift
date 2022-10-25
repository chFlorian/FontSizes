// Created by Florian Schweizer on 25.10.22

import SwiftUI

struct AppDescriptionView: View {
    var body: some View {
        VStack {
            Image(systemName: "graduationcap")
                .resizable()
                .scaledToFit()
                .frame(width: 75, height: 75)
            
            Text("Font Sizes for SwiftUI")
                .font(.largeTitle)
            
            Form {
                LabeledSection(title: "Menu Bar",
                               systemImage: "ellipsis.rectangle",
                               description: "Easy access to all SwiftUI Fonts right in the menu bar.")
            }
            
            Spacer()
            
            Link("Made by Flo writes Code",
                 destination: URL(string: "https://twitter.com/FloWritesCode")!)
            .font(.footnote)
            .foregroundColor(.secondary)
        }
        .padding()
        .frame(width: 400, height: 400)
    }
}

struct AppDescriptionView_Previews: PreviewProvider {
    static var previews: some View {
        AppDescriptionView()
    }
}

struct LabeledSection: View {
    let title: String
    let systemImage: String
    let description: String
    
    var body: some View {
        HStack(spacing: 16) {
            Image(systemName: systemImage)
                .font(.largeTitle)
            
            VStack(alignment: .leading, spacing: 16) {
                Text(title)
                    .font(.title)
                    .foregroundColor(.accentColor)
                
                Text(description)
            }
        }
        .padding(.vertical, 8)
    }
}
