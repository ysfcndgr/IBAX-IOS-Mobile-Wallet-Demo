//
//  NetworkListView.swift
//  iBaxApp
//
//  Created by Ufuk Köşker on 21.02.2022.
//

import SwiftUI

struct NetworkListView: View {
  
  // MARK: - Variables
  @ObservedObject var authorizationVM = AuthorizationViewModel()
  @EnvironmentObject var settings: GlobalsVariable
  @Environment(\.presentationMode) var presentationMode
  
  var body: some View {
    
    ScrollView(.vertical, showsIndicators: false) {
      VStack(alignment: .leading, spacing: 20) {
        ForEach(authorizationVM.allService, id: \.id) { service in
          Button {
            settings.selectedService = service.name
            settings.isConnected = true
            presentationMode.wrappedValue.dismiss()
          } label: {
            HStack {
              Circle()
                .foregroundColor(settings.selectedService == service.name ? .green : .clear)
                .frame(width: 10, height: 10)
              Text(service.name)
              Spacer()
              Text(service.nodes)
            }
            .foregroundColor(.black)
          }
          .padding(.horizontal)
        }
      }
    }
    .navigationBarTitle("Networks")
    .onAppear {
      authorizationVM.getAllService()
    }
  }
}

struct NetworkListView_Previews: PreviewProvider {
  static var previews: some View {
    NetworkListView()
  }
}
