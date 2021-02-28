//
//  Division.swift
//  AbsenceRecorder
//
//  Created by Zhenglong Wu on 28/02/2021.
//

import Foundation

class Division {
    let code: String
    var students: [Student] = []
    
    init(code: String) {
        self.code = code
    }
    
    func randomForename() -> String {
        
        let forenames = ["James", "John", "Robert", "Michael", "William", "David", "Richard", "Joseph", "Thomas", "Charles", "Christopher", "Daniel", "Matthew", "Anthony", "Donald", ]
        
        return forenames.randomElement()!
    }
    
    func randomSurname() -> String {
        
        let surnames = ["Smith", "Johnson", "Williams", "Brown", "Jones", "Garcia", "Miller", "Davis", "Rodriguez", "Martinez", "Hernandez", "Lopez", "Gonzales", "Wilson", "Anderson"]
        
        return surnames.randomElement()!
    }
    
    
    #if DEBUG

    static func createDivision(code: String, of size: Int) -> Division {
        let division = Division(code: code)
        
        for i in 1...size{
            
            division.students.append(Student.init(forename: ("Forname \(i)"), surname: "Surname \(i)", birthday: Date()))
        }
        
        
        
        return division
    }
    
    static let examples = [Division.createDivision(code: "vBY-1", of: 12),
                           Division.createDivision(code: "vBW-1", of: 11),
                           Division.createDivision(code: "vCX-1", of: 8),
                           Division.createDivision(code: "vCZ-1", of: 16)]
    
    #endif
}
