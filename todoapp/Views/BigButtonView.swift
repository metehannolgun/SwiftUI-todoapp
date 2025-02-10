//
//  BigButtonView.swift
//  todoapp
//
//  Created by Metehan Olgun on 7.02.2025.
//

import SwiftUI

struct BigButton: View {
    let title: String
    let action: () -> Void
    
    var body: some View {
//  Tek bir button yapıp componente çevirdik, her yere rahat şekilde çağırıyoruz
        Button(action: action, label: {
            ZStack {
                RoundedRectangle(cornerRadius: 50)
                    .foregroundStyle(.primary)
                    
                Text(title)
                    .foregroundColor(.black)
            }
        })
        .frame(height: 50)
        .padding(.horizontal)
    }
}

#Preview {
    BigButton(title: "Button Title'ı" , action: {})
}
