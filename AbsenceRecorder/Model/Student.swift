//
//  Student.swift
//  AbsenceRecorder
//
//  Created by Zhenglong Wu on 28/02/2021.
//

import Foundation

class Student {
    let forename: String
    let surname: String
    let birthday: Date
    
    init(forename: String, surname: String, birthday: Date) {
        self.forename = forename
        self.surname = surname
        self.birthday = birthday
        
    }
    
    func randomForename() -> String {
        
        let forenames = ["James", "John", "Robert", "Michael", "William", "David", "Richard", "Joseph", "Thomas", "Charles", "Christopher", "Daniel", "Matthew", "Anthony", "Donald", ]
        
        return forenames.randomElement()!
    }
    
    func randomSuranme() -> String {
        
        let surnames = ["Smith", "Johnson", "Williams", "Brown", "Jones", "Garcia", "Miller", "Davis", "Rodriguez", "Martinez", "Hernandez", "Lopez", "Gonzales", "Wilson", "Anderson"]
        
        return surnames.randomElement()!
    }
  
}
