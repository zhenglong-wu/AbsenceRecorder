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
    var absences: [Absence] = []
    
    init(code: String) {
        self.code = code
    }
    
    func getAbsence(for date: Date) -> Absence? {
        return absences.first{
            let comparison = Calendar.current.compare($0.dateTakenOn, to: date, toGranularity: .day)
            return comparison == .orderedSame
        }
    }
    
    func createAbsenceOrGetExistingAbsenceIfAvailable(for date: Date) -> Absence {
        if getAbsence(for: date) != nil {
            return getAbsence(for: date)!
        }
        else{
            let absence = Absence(date: date, students: students)
            absences.append(absence)
            
            return absence
        }
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
