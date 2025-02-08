//
//  RegisterView.swift
//  todoapp
//
//  Created by Metehan Olgun on 7.02.2025.
//

import SwiftUI

struct RegisterView: View {
//    @State var name = ""
//    @State var email = ""
//    @State var password = ""
    @StateObject var viewModel = RegisterViewViewModel()
    var body: some View {
        NavigationStack{
            VStack{
                // Header
                HeaderView()
                Form{
                    Section(header: Text("Kayıt Formu")){
                        if !viewModel.errorMessage.isEmpty{
                            Text(viewModel.errorMessage)
                                .foregroundColor(.red)
                        }
                        TextField("Tam adınızı giriniz", text:$viewModel.name)
                            .autocorrectionDisabled()
                        TextField ("Emailinizi giriniz:", text:$viewModel.email)
                            .autocorrectionDisabled()
                            .autocapitalization(.none)
                        SecureField("Şifrenizi giriniz:", text:$viewModel.password)
                        
                    }
                                            
                }
                .frame(height: 250)

                BigButton(title: "Kayıt Ol", action: {
                    viewModel.register()
                })
                Spacer()
                    //Footer
                VStack{
                    Text("Zaten bizden biri misin?")
                    NavigationLink("Giriş yap",
                    destination: LoginView())
                }
                .padding(.bottom,150)
            }
        }
    }
}

#Preview {
    RegisterView()
}
