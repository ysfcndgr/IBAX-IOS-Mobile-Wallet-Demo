//
//  View+Ext.swift
//  iBaxApp
//
//  Created by Ufuk Köşker on 21.02.2022.
//

import SwiftUI

extension View {
  
  /// It creates a popup page for switching to **Authorization** and **Networks** pages.
  func popUpNavigationView<Content: View>(horizontalPadding: CGFloat = 40, show: Binding<Bool>, @ViewBuilder content: @escaping () -> Content) -> some View {
    return self
      .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .center)
      .overlay(
        Group {
          if show.wrappedValue {
            GeometryReader { proxy in
              let size = proxy.size
              NavigationView {
                content()
              }
              .frame(width: size.width - horizontalPadding , height: size.height / 1.7, alignment: .center)
              .cornerRadius(15)
              .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .center)
            }
          }
        }
      )
  }
}
