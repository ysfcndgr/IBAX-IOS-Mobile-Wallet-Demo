//
//  AuthorizationWelcomeView.swift
//  iBaxApp
//
//  Created by Ufuk Köşker on 21.02.2022.
//

import SwiftUI

struct AuthorizationWelcomeView: View {
  
    var body: some View {
      VStack(alignment: .leading, spacing: 20) {
        Text("Welcome")
          .font(.system(size: 30, weight: .bold, design: .rounded))
          .multilineTextAlignment(.center)
          .frame(maxWidth: .infinity)
        Text("Before proceeding, you will be guided through the account creation process. This will not take too much time. After completing this process you will be able to use all features of IBAX")
          .font(.system(size: 18, weight: .light, design: .rounded))
          .multilineTextAlignment(.center)
        Text("Press 'Create or import account' button to begin the process of creating or restoring your account")
          .font(.system(size: 18, weight: .light, design: .rounded))
          .multilineTextAlignment(.center)
        
        Button {
          
        } label: {
          HStack {
            Image(systemName: "plus.circle")
              .imageScale(.large)
            VStack(alignment: .leading) {
              Text("Create or import account")
                .font(.system(size: 18, weight: .medium, design: .rounded))
              Text("Restore your existing account or enroll a new one")
                .font(.system(size: 12, weight: .light, design: .rounded))
            }
          }
        }
        .foregroundColor(.black)
        
        Button {
          
        } label: {
          HStack {
            Image("import")
              .resizable()
              .frame(width: 22, height: 25)
            VStack(alignment: .leading) {
              Text("Demo")
                .font(.system(size: 18, weight: .medium, design: .rounded))
              Text("Proceed with this option if you want to try IBAX in test mode")
                .font(.system(size: 12, weight: .light, design: .rounded))
            }
          }
        }
        .foregroundColor(.black)
      }
    }
}

struct AuthorizationWelcomeView_Previews: PreviewProvider {
    static var previews: some View {
        AuthorizationWelcomeView()
    }
}
