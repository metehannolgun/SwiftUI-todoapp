//
//  RegisterView.swift
//  todoapp
//
//  Created by Metehan Olgun on 7.02.2025.
//

import SwiftUI

struct RegisterView: View {
    @State var name = ""
    @State var email = ""
    @State var password = ""
    var body: some View {
        NavigationStack{
            VStack{
                // Header
                HeaderView()
                Form{
                    Section(header: Text("Kayıt Formu")){
                        TextField("Tam adınızı giriniz", text:$name)
                            .autocorrectionDisabled()
                        TextField ("Emailinizi giriniz:", text:$email)
                            .autocorrectionDisabled()
                            .autocapitalization(.none)
                        SecureField("Şifrenizi giriniz:", text:$password)
                        
                    }
                                            
                }
                .frame(height: 200)

                BigButton(title: "Kayıt Ol", action: {})
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
