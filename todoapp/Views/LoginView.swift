//
//  LoginView.swift
//  todoapp
//
//  Created by Metehan Olgun on 7.02.2025.
//

import SwiftUI

struct LoginView: View {
//    @State var email = ""
//    @State var password = ""
   @StateObject var viewModel = LoginViewViewModel()
    var body: some View {
        NavigationStack{
            VStack{
                //Header
                HeaderView()
                //Form
                Form{
                    if !viewModel.errorMessage.isEmpty{
                        Text(viewModel.errorMessage)
                            .foregroundColor(.red)
                    }
                    TextField("Email girsene", text: $viewModel.email)
                    SecureField("Password", text: $viewModel.password)
                        .autocorrectionDisabled()
                        .autocapitalization(.none)
                    
                }
                .frame(height: 200)
                
                BigButton(title: "Giriş Yap", action: {
                    viewModel.login()
                })
                
          
                Spacer()
                
                //Footer
                VStack{
                    Text("Buralarda yeni misin?")
                    NavigationLink("Yeni Hesap Oluştur",
                    destination: RegisterView())
                }
                .padding(.bottom,150)
                
            }
        }
        
                
        
    }
}

#Preview {
    LoginView()
}
