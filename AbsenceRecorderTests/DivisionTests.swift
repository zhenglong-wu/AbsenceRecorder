//
//  DivisionTests.swift
//  AbsenceRecorderTests
//
//  Created by Zhenglong Wu on 12/03/2021.
//

import XCTest
@testable import AbsenceRecorder

class DivisionTests: XCTestCase {

 

    func testGetAbsenceDivisionWithAbsenceOnThatDayReturnsAbsence() throws {
        
        
        let division = Division(code: "TestDiv")
        let dateToday = Date()
        let absence = Absence(date: dateToday, students: Student.examples)
        division.absences.append(absence)
        
        let actual = division.getAbsence(for: dateToday)
        
        XCTAssertNotNil(actual)
    }

    func testGetAbsenceDivisionWithAbsenceOnDayReturnsAbsence() throws {
        
        
        let division = Division(code: "TestDiv")
        let dateToday = Date()
        let dateTomorrow = Date(timeIntervalSinceNow: 100000000000000000000000000000000)
        let dateLaterToday = Date(timeIntervalSinceNow: 100)
        let absence1 = Absence(date: dateTomorrow, students: Student.examples)
        let absence2 = Absence(date: dateToday, students: Student.examples)
        division.absences.append(absence1)
        division.absences.append(absence2)
        
        let actual = division.getAbsence(for: dateLaterToday)
        
        XCTAssertNotNil(actual)
        if let actualNotNil = actual {
            XCTAssertEqual(actualNotNil.dateTakenOn, absence2.dateTakenOn)
        }
        
    }

}

