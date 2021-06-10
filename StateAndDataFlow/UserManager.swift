//
//  UserManager.swift
//  StateAndDataFlow
//
//  Created by Alexey Efimov on 08.06.2021.
//

import SwiftUI

class UserManger: ObservableObject {
    @Published var isRegister: Bool
    var name: String
    
    internal init(name: String, isRegister: Bool) {
        self.name = name
        self.isRegister = isRegister
    }

    
    
}
