//
//  StateAndDataFlowApp.swift
//  StateAndDataFlow
//
//  Created by Alexey Efimov on 08.06.2021.
//

import SwiftUI

@main
struct StateAndDataFlowApp: App {
    @StateObject private var user = UserManger()
   // @StateObject private var manager = StorageManager()
    
    
    var body: some Scene {
        WindowGroup {
            StarterView()
                .environmentObject(user)
               // .environmentObject(manager)
        }
    }
}
