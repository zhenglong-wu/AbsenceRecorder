//
//  StatisticsView.swift
//  AbsenceRecorder
//
//  Created by Zhenglong Wu on 10/03/2021.
//

import SwiftUI

struct StatisticsView: View {
    
    @EnvironmentObject var state: StateController
    
    var body: some View {
        
        Text("\(state.divisions[0].code)")
    }
}

struct StatisticsView_Previews: PreviewProvider {
    static var previews: some View {
        StatisticsView()
            .environmentObject(StateController())
    }
}
