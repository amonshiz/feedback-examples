//
//  ListData.swift
//  listrowbackground-differences
//
//  Created by Andrew Monshizadeh on 7/26/20.
//

import Foundation

struct ListData: Hashable {
  let content: String
}

extension ListData: Identifiable {
  var id: String { content }
}

let content = Array(0..<5).map { ListData.init(content: String(describing: $0)) }
