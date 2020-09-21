//
//  ContentView.swift
//  navigationview-toolbaritems-ax
//
//  Created by Andrew Monshizadeh on 8/10/20.
//

import SwiftUI

struct ContentView: View {
  var body: some View {
    NavigationView {
      ScrollView(.vertical) {
        Text("Hello, world!")
          .toolbar(content: {
            ToolbarItem {
              EmptyView()
            }
          })
      }
    }
  }
}

struct ContentView_Previews: PreviewProvider {
  static var previews: some View {
    ContentView()
  }
}
