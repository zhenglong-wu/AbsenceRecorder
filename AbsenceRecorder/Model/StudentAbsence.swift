//
//  StudentAbsence.swift
//  AbsenceRecorder
//
//  Created by Zhenglong Wu on 12/03/2021.
//

import Foundation

class StudentAbsence: ObservableObject {
    let student: Student
    @Published var isAbsent: Bool

    init(student: Student) {
        self.student = student
        isAbsent = false
    }
    
    #if DEBUG
    static let example = StudentAbsence(student: Student.example)
    #endif
    
}
