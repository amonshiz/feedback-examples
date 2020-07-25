//
//  ScrollWithReader.swift
//  listview-scrollviewreader
//
//  Created by Andrew Monshizadeh on 7/21/20.
//

import SwiftUI

struct ScrollWithReader: View {
  @State var selectedItem: Int = 1
  var body: some View {
    ScrollViewReader { svProxy in
      ScrollView {
        LazyVStack {
          ForEach(contents, id: \.self) {
            Text("\($0)" + ($0 == selectedItem ? "*" : ""))
          }
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

struct ScrollWithReader_Previews: PreviewProvider {
  static var previews: some View {
    ScrollWithReader()
  }
}
