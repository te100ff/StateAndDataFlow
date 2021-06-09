//
//  RegisterView.swift
//  StateAndDataFlow
//
//  Created by Alexey Efimov on 08.06.2021.
//

import SwiftUI

struct RegisterView: View {
    @State private var name = ""
    @EnvironmentObject var user: UserManger
    
    var body: some View {
        VStack {
            HStack {
                TextField("Enter your name", text: $name)
                    .multilineTextAlignment(.center)
                Text("\(name.count)")
                    .foregroundColor(name.count < 3 ? .red : .green)
            }
            .padding()
            Button(action: registerUser) {
                HStack {
                    Image(systemName: "checkmark.circle")
                    Text("OK")
                }
            }
            .disabled(name.count < 3)
        }
    }
    private func registerUser() {
        if !name.isEmpty {
            user.name = name
            user.isRegister.toggle()
        }
    }
}

struct RegisteredView_Previews: PreviewProvider {
    static var previews: some View {
        RegisterView()
    }
}
