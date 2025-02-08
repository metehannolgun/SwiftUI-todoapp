//
//  User.swift
//  todoapp
//
//  Created by Metehan Olgun on 7.02.2025.
//

import Foundation

struct User: Codable {
    let id: String
    let name: String
    let email: String
    let joined: TimeInterval
}
