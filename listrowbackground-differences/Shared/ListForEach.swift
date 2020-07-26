//
//  ListForEach.swift
//  listrowbackground-differences
//
//  Created by Andrew Monshizadeh on 7/26/20.
//

import SwiftUI

struct ListForEach: View {
  var body: some View {
    List {
      ForEach(content) {
        Text($0.content).listRowBackground(Color.blue)
      }
    }
  }
}

struct ListForEach_Previews: PreviewProvider {
  static var previews: some View {
    ListForEach()
  }
}
