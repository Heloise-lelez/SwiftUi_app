//
//  Toast.swift
//  Cours_SwiftUI_2
//
//  Created by Héloïse Le Lez on 16/10/2024.
//

import Foundation

struct Toast: Equatable {
  var style: ToastStyle
  var message: String
  var duration: Double = 3
  var width: Double = .infinity
}
