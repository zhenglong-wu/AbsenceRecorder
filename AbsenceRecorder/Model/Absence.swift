//
//  Absence.swift
//  AbsenceRecorder
//
//  Created by Zhenglong Wu on 12/03/2021.
//

import Foundation

class Absence {
    
    let dateTakenOn: Date
    var studentAbsences: [StudentAbsence]
    
    init(date: Date, students: [Student]){
        dateTakenOn = Date()
        studentAbsences = students.map { StudentAbsence(student: $0) }
    }
    
    #if DEBUG
    
    static let example = Absence(date: Date(), students: Student.examples)
    
    #endif
    
}
