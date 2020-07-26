//
//  ListDataId.swift
//  listrowbackground-differences
//
//  Created by Andrew Monshizadeh on 7/26/20.
//

import SwiftUI

struct ListDataId: View {
  var body: some View {
    List(content) {
      Text($0.content).listRowBackground(Color.blue)
    }
  }
}

struct ListDataId_Previews: PreviewProvider {
  static var previews: some View {
    ListDataId()
  }
}
