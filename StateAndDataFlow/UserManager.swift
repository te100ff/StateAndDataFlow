//
//  UserManager.swift
//  StateAndDataFlow
//
//  Created by Alexey Efimov on 08.06.2021.
//

import Combine
import SwiftUI

class UserManger: ObservableObject {
    @AppStorage("isRegister") var isRegister = false
    @AppStorage("name") var name = ""
    
    func logOut() {
        isRegister = false
        name = ""
    }
}
