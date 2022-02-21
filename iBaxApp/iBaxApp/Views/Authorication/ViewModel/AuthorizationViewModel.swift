//
//  AuthorizationViewModel.swift
//  iBaxApp
//
//  Created by Ufuk Köşker on 21.02.2022.
//

import Foundation
 
class AuthorizationViewModel: ObservableObject {
  
  @Published var allService: [ServiceResponse] = []
  
  ///Fake data was created to test the application.
  func getAllService() {
    let service: [ServiceResponse] = [.init(name: "TESTNET HK-1 Network", nodes: "5"), .init(name: "TESTNET SG-2 Network", nodes: "3"), .init(name: "SG-1 Network", nodes: "4")]
    allService = service
  }
}

struct ServiceResponse: Identifiable {
  let id = UUID().uuidString
  let name: String
  let nodes: String
}
