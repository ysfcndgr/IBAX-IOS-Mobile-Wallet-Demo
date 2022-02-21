//
//  iBaxAppApp.swift
//  iBaxApp
//
//  Created by Ufuk Köşker on 21.02.2022.
//

import SwiftUI

@main
struct iBaxAppApp: App {
    var body: some Scene {
        WindowGroup {
          LaunchView().environmentObject(GlobalsVariable())
        }
    }
}
