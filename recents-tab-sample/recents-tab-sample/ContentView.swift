//
//  ContentView.swift
//  recents-tab-sample
//
//  Created by Andrew Monshizadeh on 7/19/20.
//

import SwiftUI

struct ContentView: View {
  var body: some View {
    TabView {
      NavigationView {
        LView()
          .navigationTitle("Recents")
          .navigationBarTitleDisplayMode(.large)
          .modifier(PickerModifier())
      }
      .tabItem { Text("Large-Title-Toolbar") }
      NavigationView {
        LView()
          .navigationBarTitleDisplayMode(.large)
          .modifier(PickerModifier())
      }
      .tabItem { Text("Large-Toolbar") }
      NavigationView {
        LView()
          .navigationTitle("Recents")
          .navigationBarTitleDisplayMode(.inline)
          .modifier(PickerModifier())
      }
      .tabItem { Text("Inline-Title-Toolbar") }
      NavigationView {
        LView()
          .navigationBarTitleDisplayMode(.inline)
          .modifier(PickerModifier())
      }
      .tabItem { Text("Inline-Toolbar") }
    }
  }
}

struct PickerModifier: ViewModifier {
  func body(content: Content) -> some View {
    content
      .toolbar {
        ToolbarItem(placement: .principal) {
          Picker(
            selection: .constant(1),
            label: EmptyView()) {
            Text("All").tag(1)
            Text("Missed").tag(2)
          }
          .pickerStyle(SegmentedPickerStyle())
        }
        ToolbarItem {
          EditButton()
        }
      }
  }
}

struct LView: View {
  var body: some View {
    List(0 ..< 15) {
      Text("\($0)")
    }
  }
}

struct ContentView_Previews: PreviewProvider {
  static var previews: some View {
    ContentView()
  }
}
