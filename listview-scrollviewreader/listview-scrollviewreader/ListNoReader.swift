//
//  ListNoReader.swift
//  listview-scrollviewreader
//
//  Created by Andrew Monshizadeh on 7/21/20.
//

import SwiftUI

struct ListNoReader: View {
  @State var selectedItem: Int = 1
  var body: some View {
    List {
      ForEach(contents, id: \.self) {
        Text("\($0)" + ($0 == selectedItem ? "*" : "")).id($0)
      }
    }
    .onAppear {
      Timer.scheduledTimer(withTimeInterval: 3, repeats: true) { _ in
        selectedItem = contents.randomElement() ?? contents[0]
      }
    }
  }
}

struct ListNoReader_Previews: PreviewProvider {
  static var previews: some View {
    ListNoReader()
  }
}
