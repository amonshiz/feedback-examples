//
//  ListIndividualRows.swift
//  listrowbackground-differences
//
//  Created by Andrew Monshizadeh on 7/26/20.
//

import SwiftUI

struct ListIndividualRows: View {
  var body: some View {
    List {
      Text(content[0].content).listRowBackground(Color.blue)
      Text(content[1].content).listRowBackground(Color.red)
    }
  }
}

struct ListIndividualRows_Previews: PreviewProvider {
  static var previews: some View {
    ListIndividualRows()
  }
}
