//
//  ContentView.swift
//  ObservationDemo
//
//  Created by Vasichko Anna on 11.07.2023.
//

import SwiftUI

struct ContentView: View {
    @State var user = User(name: "John", surname: "Johnson", score: 10)
    @Environment(Counter.self) var counter
    
    var body: some View {
        VStack(spacing: 20) {
//            VStack {
//                Text("Your name: \(user.fullName)")
//                Text("Your score: \(user.score)")
//            }
//            .font(.title)
//            .padding([.top, .bottom], 50)
            
            Text("Change user data")
                .font(.headline)
            VStack {
                TextField("Name", text: $user.name)
                TextField("Surname", text: $user.surname)
            }
            .textFieldStyle(.roundedBorder)
            
            Button("Increase score") {
                counter.count += 1
            }
            .buttonStyle(.borderedProminent)
            
            UserInfoView(user: user)
            
            Spacer()
        }
        .padding()
    }
}

#Preview {
    ContentView()
}

struct UserInfoView: View {
    @Bindable var user: User
    @Environment(Counter.self) var counter
    
    var body: some View {
        VStack {
            Text("Your name: \(user.fullName)")
            Text("Your score: \(counter.count)")
        }
        .font(.title)
        .padding([.top, .bottom], 50)
    }
}
