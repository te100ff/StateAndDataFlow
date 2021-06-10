//
//  StorageManager.swift
//  StateAndDataFlow
//
//  Created by Stanislav Testov on 10.06.2021.
//

import SwiftUI

class StorageManager: UserManger {
    //var objectWillChange: ObservableObjectPublisher
    
    @AppStorage("name") var namstorageName = ""
    @AppStorage("isRegister") var status: Bool = false
    
//    override init(name: String, isRegister: Bool) {
//        <#code#>
//    }
    
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
