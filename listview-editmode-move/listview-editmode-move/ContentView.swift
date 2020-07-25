//
//  ContentView.swift
//  listview-editmode-move
//
//  Created by Andrew Monshizadeh on 7/24/20.
//

import SwiftUI

struct ContentView: View {
  @State var values = Array(0..<10)
  var body: some View {
    NavigationView {
      List {
        ForEach(values, id: \.self) { n in
          Text("\(n)")
        }
        .onMove { indices, newOffset in
          values.move(fromOffsets: indices, toOffset: newOffset)
        }
      }
      .toolbar(items: {
        ToolbarItem {
          EditButton()
        }
      })
    }
  }
}

struct ContentView_Previews: PreviewProvider {
  static var previews: some View {
    ContentView()
  }
}
