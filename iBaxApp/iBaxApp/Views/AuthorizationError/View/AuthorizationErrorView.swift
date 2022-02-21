//
//  AuthorizationErrorView.swift
//  iBaxApp
//
//  Created by Ufuk Köşker on 21.02.2022.
//

import SwiftUI

struct AuthorizationErrorView: View {
  
  var body: some View {
    VStack(spacing: 20) {
      Image("no-connection")
        .resizable()
        .frame(width: 150, height: 150)
      
      Text("Not connected")
        .font(.system(size: 30, weight: .bold, design: .rounded))
      
      Text("Please connect to a network to begin using Ibax. You can manage networks by clicking on the connection indicator in the top right corner of this window")
        .font(.system(size: 18, weight: .light, design: .rounded))
        .multilineTextAlignment(.center)
      
      NavigationLink {
        NetworkListView()
      } label: {
        Text("Connect")
          .foregroundColor(.white)
          .font(.system(size: 20, weight: .light, design: .rounded))
          .padding(10)
          .background(Color("background"))
          .cornerRadius(10)
      }

    }
  }
}

struct AuthorizationErrorView_Previews: PreviewProvider {
  static var previews: some View {
    AuthorizationErrorView()
  }
}
