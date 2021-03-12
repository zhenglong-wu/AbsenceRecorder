//
//  AbsenceView.swift
//  AbsenceRecorder
//
//  Created by Zhenglong Wu on 10/03/2021.
//

import SwiftUI

struct AbsenceView: View {
    
    let absence: Absence
    
    var body: some View {
        
        List(absence.studentAbsences, id: \.self.student.forename) { studentAbsence in
            AbsenceItem(studentAbsence: studentAbsence)
        }
        
        
    }
}

struct AbsenceView_Previews: PreviewProvider {
    static var previews: some View {
        AbsenceView(absence: Absence.example)
    }
}
