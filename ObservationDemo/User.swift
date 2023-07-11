//
//  User.swift
//  ObservationDemo
//
//  Created by Vasichko Anna on 11.07.2023.
//


import Observation

@Observable
final class User {
    var name = ""
    var surname = ""
    
   // @ObservationIgnored
    var score = 0
    
    var fullName: String {
        name + " " + surname
    }
    
    init(name: String, surname: String, score: Int) {
        self.name = name
        self.surname = surname
        self.score = score
    }
}


@Observable
final class Counter {
    var count = 0
}
