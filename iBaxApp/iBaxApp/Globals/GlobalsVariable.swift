//
//  GlobalsVariable.swift
//  iBaxApp
//
//  Created by Ufuk Köşker on 21.02.2022.
//

import Foundation

class GlobalsVariable: ObservableObject {
  @Published var isConnected: Bool = false
  @Published var selectedService: String = ""
}
