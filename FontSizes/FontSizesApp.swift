// Created by Florian Schweizer on 01.08.22

import SwiftUI

@main
struct FontSizesApp: App {
    var body: some Scene {
        WindowGroup {
            AppDescriptionView()
        }
        
        MenuBarExtra("", systemImage: "graduationcap") {
            FontList()
        }
        .menuBarExtraStyle(.window)
    }
}
