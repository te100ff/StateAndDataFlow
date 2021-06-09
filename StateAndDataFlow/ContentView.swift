//
//  ContentView.swift
//  StateAndDataFlow
//
//  Created by Alexey Efimov on 08.06.2021.
//

import SwiftUI

struct ContentView: View {
    @EnvironmentObject var user: UserManger
    //@EnvironmentObject var manager: StorageManager
    @StateObject private var timer = TimeCounter()
    
    var body: some View {
        VStack(spacing: 100) {
            Text("Hi, \(user.name)!")
                .font(.largeTitle)
            Text("\(timer.counter)")
                .font(.largeTitle)
                .overlay(Circle(ra)
                            .stroke(Color.black, lineWidth: 3)
                    
                )
            ButtonView(
                action: timer.startTimer,
                       color: .red,
                buttonTitle: timer.buttonTitle
            )
            ButtonView(
                action: user.logOut,
                color: .blue,
                buttonTitle: "Log Out")
        }.padding()
            
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .environmentObject(UserManger())
    }
}

struct ButtonView: View {
    let action: () -> Void
    let color: Color
    let buttonTitle: String
    
    var body: some View {
        Button(action: action) {
            Text(buttonTitle)
                .font(.title)
                .fontWeight(.bold)
                .foregroundColor(.white)
        }
        .frame(width: 200, height: 60)
        .background(color)
        .cornerRadius(20)
        .overlay(
            RoundedRectangle(cornerRadius: 20)
                .stroke(Color.black, lineWidth: 4)
        )
    }
}
