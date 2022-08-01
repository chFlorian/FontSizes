// Created by Florian Schweizer on 01.08.22

import SwiftUI

@main
struct FontSizesApp: App {
    @NSApplicationDelegateAdaptor(AppDelegate.self) var appDelegate
    
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
    }
}

class AppDelegate: NSObject, NSApplicationDelegate {
    var popover = NSPopover.init()
    var statusBar: StatusBarController?
    
    func applicationDidFinishLaunching(_ aNotification: Notification) {
        popover.contentSize = NSSize(width: 200, height: 280)
        popover.contentViewController = NSHostingController(rootView: ContentView())
        
        statusBar = StatusBarController(popover)
    }
}
