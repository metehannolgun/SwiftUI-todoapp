//
//  MainViewView.swift
//  todoapp
//
//  Created by Metehan Olgun on 7.02.2025.
//

import Foundation
import FirebaseAuth
// Daha önce giriş yapılıp yapılmadığını kontrol etmek için

class MainViewViewModel:ObservableObject{
    @Published var currenUserId: String = ""
    
    init(){
        Auth.auth().addStateDidChangeListener { [weak self] _, user in
            DispatchQueue.main.async {
                self?.currenUserId = user?.uid ?? ""
            }
        }
    }
    public var isSignedIn: Bool {
        return Auth.auth().currentUser != nil
    }
}
