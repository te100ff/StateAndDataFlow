//
//  ContentView.swift
//  StateAndDataFlow
//
//  Created by Alexey Efimov on 08.06.2021.
//

import SwiftUI

struct ContentView: View {
    @EnvironmentObject var user: UserManger
    @StateObject private var timer = TimeCounter()
    
    var body: some View {
        VStack(spacing: 100) {
            Text("Hi, \(user.name)!")
                .font(.largeTitle)
            Text("\(timer.counter)")
                .font(.largeTitle)
                .overlay(
                    Circle()
                        .stroke(changeCircleColor(timer.counter), lineWidth: 3)
                        .frame(width: 100, height: 100)
                    
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
    
    private func changeCircleColor(_ number: Int) -> Color {
        switch number {
        case 2: return .green
        case 1: return .pink
        case 0: return .orange
        default: return .black
        }
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
