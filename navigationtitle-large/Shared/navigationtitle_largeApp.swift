//
//  navigationtitle_largeApp.swift
//  Shared
//
//  Created by Andrew Monshizadeh on 7/24/20.
//

import SwiftUI

@main
struct navigationtitle_largeApp: App {
    var body: some Scene {
        WindowGroup {
          TabView {
            ScrollSample().tabItem { Text("Scroll") }
            ListSample().tabItem { Text("List") }
          }
        }
    }
}
