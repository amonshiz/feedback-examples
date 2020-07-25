//
//  ContentView.swift
//  listview-scrollviewreader
//
//  Created by Andrew Monshizadeh on 7/21/20.
//

import SwiftUI

let contents = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]

struct ContentView: View {
  var body: some View {
    TabView {
      ListNoReader()
        .tabItem { Text("List Only") }
      ListWithReader()
        .tabItem { Text("List + Reader") }
      ScrollWithReader()
        .tabItem { Text("Scroll + Reader") }
    }
  }
}

struct ContentView_Previews: PreviewProvider {
  static var previews: some View {
    ContentView()
  }
}
