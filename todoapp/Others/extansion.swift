//
//  extansion.swift
//  todoapp
//
//  Created by Metehan Olgun on 9.02.2025.
//

import Foundation

//dataya gelecek olan verilerin tipi bilinmediği için "any" olarak geliyor, bu anyi jsona çevirip döndürüyoruz
extension Encodable{
    func asDictionary() -> [String: Any]{
        guard let data = try? JSONEncoder().encode(self) else{
            return [:]
        }
        
        do {
            let json = try JSONSerialization.jsonObject(with: data) as? [String:Any]
            return json ?? [:]
        }catch{
            return [:]
        }
    }
        
}
