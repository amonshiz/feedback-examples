//
//  ContentView.swift
//  DisplayModeButtonIssue
//
//  Created by Andrew Monshizadeh on 7/29/20.
//

import SwiftUI

struct ContentView: View {
  var body: some View {
    NavigationView {
      NavigationLink("One", destination: NavigationLink("Two", destination: Text("Check lldb output")))
    }
  }
}

struct ContentView_Previews: PreviewProvider {
  static var previews: some View {
    ContentView()
  }
}
