//
//  StorageManager.swift
//  StateAndDataFlow
//
//  Created by Stanislav Testov on 10.06.2021.
//

import SwiftUI

class StorageManager: ObservableObject {
    @AppStorage("name") var name = ""
    @AppStorage("isRegister") var isRegister = false
    
    func save(user: UserManger) {
        name = user.name
        isRegister = user.isRegister
    }
    
    func loadData(user: UserManger) -> UserManger {
        let newUser = user
        newUser.name = name
        newUser.isRegister = isRegister
        return newUser
    }
    
    func logOut(user: UserManger) {
        name = ""
        isRegister = false
        save(user: user)
    }
    
}
