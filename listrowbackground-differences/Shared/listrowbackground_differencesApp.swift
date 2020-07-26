//
//  listrowbackground_differencesApp.swift
//  Shared
//
//  Created by Andrew Monshizadeh on 7/26/20.
//

import SwiftUI

@main
struct listrowbackground_differencesApp: App {
    var body: some Scene {
        WindowGroup {
          TabView {
            ListIndividualRows()
              .tabItem { Text("List Only") }
            ListDataId()
              .tabItem { Text("List(_:id:...)") }
            ListForEach()
              .tabItem { Text("List{ForEach}") }
          }
        }
    }
}
