//
//  ObservationDemoApp.swift
//  ObservationDemo
//
//  Created by Vasichko Anna on 11.07.2023.
//

import SwiftUI

@main
struct ObservationDemoApp: App {
   @State var count = Counter()
    
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(count)
        }
    }
}
