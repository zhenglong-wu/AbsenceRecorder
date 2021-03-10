//
//  StateController.swift
//  AbsenceRecorder
//
//  Created by Zhenglong Wu on 10/03/2021.
//

import Foundation

class StateController: ObservableObject {
    
    @Published var divisions: [Division]
    
    init(){
        divisions = Division.examples
    }
}
