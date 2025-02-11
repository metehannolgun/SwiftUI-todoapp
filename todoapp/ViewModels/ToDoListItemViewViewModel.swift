//
//  ToDoListItemViewView.swift
//  todoapp
//
//  Created by Metehan Olgun on 7.02.2025.
//

import FirebaseFirestore
import FirebaseAuth
import Foundation

class ToDoListItemViewViewModel: ObservableObject {
    
    
init(){}
    
    func toggleIsDone(item: ToDoListItem){
        var itemCopy = item
        itemCopy.setDone(!item.isDone)
        
        guard let uid = Auth.auth().currentUser?.uid else {
            return
        }
        let db = Firestore.firestore()
        db.collection("users")
            .document(uid)
            .collection("todos")
            .document(item.id)
            .setData(itemCopy.asDictionary())
    }
}
