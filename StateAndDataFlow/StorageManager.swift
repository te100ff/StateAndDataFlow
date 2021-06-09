//
//  StorageManager.swift
//  StateAndDataFlow
//
//  Created by Stanislav Testov on 09.06.2021.
//

import SwiftUI

class StorageManager: ObservableObject {
    @AppStorage("name") var name = ""
    @AppStorage("isRegister") var isRegister = false
    
    func save(newName: String, newStatus: Bool) {
        name = newName
        isRegister = newStatus
    }
    
    func logOut() {
        name = ""
        isRegister = false
    }
    
}


