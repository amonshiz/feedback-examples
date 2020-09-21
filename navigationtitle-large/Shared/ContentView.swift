//
//  ContentView.swift
//  Shared
//
//  Created by Andrew Monshizadeh on 7/24/20.
//

import SwiftUI

struct ScrollSample: View {
  var body: some View {
    NavigationView {
      ScrollView {
        Text("Hello, world!")
          .padding()
          .navigationTitle("Scroll")
          .navigationBarTitleDisplayMode(.automatic)
      }
    }
  }
}

struct ListSample: View {
  var body: some View {
    NavigationView {
      List(0..<5, id: \.self) {
        Text("\($0)")
          .padding()
          .navigationBarTitleDisplayMode(.automatic)
      }
      .navigationTitle("List")
    }
  }
}

struct ContentView_Previews: PreviewProvider {
  static var previews: some View {
    ScrollSample()
    ListSample()
  }
}
