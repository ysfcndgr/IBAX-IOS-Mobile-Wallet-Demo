//
//  AuthorizationView.swift
//  iBaxApp
//
//  Created by Ufuk Köşker on 21.02.2022.
//

import SwiftUI

struct AuthorizationView: View {
  
  @EnvironmentObject var settings: GlobalsVariable
  
  var body: some View {
    Color("background")
      .edgesIgnoringSafeArea(.all)
      .popUpNavigationView(show: .constant(true)) {
        Group {
          /// If the connection is successful, the **Welcome** view opens. If the connection is unsuccessful, the **Error** view opens.
          if settings.isConnected {
            AuthorizationWelcomeView()
          } else {
            AuthorizationErrorView()
          }
        }
        .padding(.horizontal)
        .navigationTitle("Authorization")
        .navigationBarTitleDisplayMode(.inline)
        .toolbar {
          ToolbarItem(placement: .navigationBarTrailing) {
            NavigationLink {
              NetworkListView()
            } label: {
              Text(settings.selectedService)
                .foregroundColor(Color("background"))
                .frame(width: 100)
            }
          }
        }
      }
  }
}

struct AuthorizationView_Previews: PreviewProvider {
  static var previews: some View {
    AuthorizationView()
  }
}
