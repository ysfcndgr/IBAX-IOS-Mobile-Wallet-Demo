//
//  LaunchView.swift
//  iBaxApp
//
//  Created by Ufuk Köşker on 21.02.2022.
//

import SwiftUI

/// It is the first page that will be loaded when the application runs.
struct LaunchView: View {
  
  @State var navigateToAuthView: Bool = false
  
  var body: some View {
    NavigationView {
      VStack(spacing: 60) {
        Image("ibax")
          .resizable()
          .frame(width: 250, height: 250)
          .shadow(color: .white, radius: 5, x: 0, y: 0)
        Text("Weaver")
          .foregroundColor(.white)
          .font(.system(size: 30, weight: .bold, design: .rounded))
        
        ProgressView()
          .progressViewStyle(CircularProgressViewStyle(tint: .white))
      }
      .frame(maxWidth: .infinity, maxHeight: .infinity)
      .background(Color("background"))
      .background(
        NavigationLink(isActive: $navigateToAuthView, destination: {
          AuthorizationView()
            .navigationBarBackButtonHidden(true)
            .navigationBarHidden(true)
        }, label: {
          EmptyView()
        })
      )
      .navigationBarHidden(true)
      .navigationBarBackButtonHidden(true)
      .edgesIgnoringSafeArea(.all)
    }
    .onAppear {
      DispatchQueue.main.asyncAfter(deadline: .now() + 3) {
        navigateToAuthView = true
      }
    }
  }
}

struct LaunchView_Previews: PreviewProvider {
  static var previews: some View {
    LaunchView()
  }
}
