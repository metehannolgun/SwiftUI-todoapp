//
//  HeaderView.swift
//  todoapp
//
//  Created by Metehan Olgun on 7.02.2025.
//

import SwiftUI

struct HeaderView: View {
    var body: some View {
        ZStack{
            Image("Logo")
                .resizable()
                .frame(width: 150, height: 150)
                Text("Festval")
                .font(.system(size: 50))
                .fontWeight(.bold)
                .foregroundColor(.gray)
                .padding(.top, 150)
                    
                
        }.padding(.top, 50)
    }
}

#Preview {
    HeaderView()
}
