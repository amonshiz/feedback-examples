//
//  ListWithReader.swift
//  listview-scrollviewreader
//
//  Created by Andrew Monshizadeh on 7/21/20.
//

import SwiftUI

struct ListWithReader: View {
  @State var selectedItem: Int = 1
  let contents = Array(1...10)
  var body: some View {
    ScrollViewReader { svProxy in
      List {
        ForEach(contents, id: \.self) {
          Text("\($0)")
        }
        .onChange(of: selectedItem) { value in
          svProxy.scrollTo(selectedItem, anchor: .top)
        }
      }
    }
    .onAppear {
      _ = Timer.scheduledTimer(withTimeInterval: 3, repeats: true) { _ in
        selectedItem = contents.randomElement() ?? contents[0]
      }
    }
  }
}

struct ListWithReader_Previews: PreviewProvider {
  static var previews: some View {
    ListWithReader()
  }
}
