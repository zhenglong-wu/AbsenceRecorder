//
//  SwiftUIView.swift
//  AbsenceRecorder
//
//  Created by Zhenglong Wu on 12/03/2021.
//

import SwiftUI

struct AbsenceItem: View {
    
    @ObservedObject var studentAbsence: StudentAbsence
    
    var body: some View {
        HStack {
            Text("\(studentAbsence.student.forename)")
            Spacer()
            if studentAbsence.isAbsent {
                Button("❌", action: { toggleAbsent() })
            }
            else{
                Button("✔️", action: { toggleAbsent() })
            }
            
        }
    }
    
    func toggleAbsent() {
        studentAbsence.isAbsent.toggle()
    }
}

struct SwiftUIView_Previews: PreviewProvider {
    static var previews: some View {
        AbsenceItem(studentAbsence: StudentAbsence.example)
    }
}
