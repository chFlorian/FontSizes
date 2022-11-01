// Created by Florian Schweizer on 25.10.22

import SwiftUI
import MacUI

struct AppDescriptionView: View {
    var body: some View {
        OnboardingScreen(image: Image(systemName: "graduationcap"), appName: "Font Sizes for SwiftUI", sections: [
            LabeledSection(title: "Menu Bar",
                           systemImage: "ellipsis.rectangle",
                           description: "Easy access to all SwiftUI Fonts right in the menu bar."),
            LabeledSection(title: "Copy Modifier",
                           systemImage: "rectangle.portrait.on.rectangle.portrait.fill",
                           description: "Click on a font to copy the corresponding ViewModifier to your clipboard.")
        ])
    }
}

struct AppDescriptionView_Previews: PreviewProvider {
    static var previews: some View {
        AppDescriptionView()
    }
}
