//
//  RootTabView.swift
//  AbsenceRecorder
//
//  Created by Zhenglong Wu on 10/03/2021.
//

import SwiftUI

struct RootTabView: View {
    var body: some View {
        
        TabView {
            DivisionsView()
                .tabItem {
                    Image(systemName: "square.and.pencil")
                    Text("Absences")
                }
            StatisticsView()
                .tabItem {
                    Image(systemName: "chart.bar")
                    Text("Statistics")
                }
        }
    }
}

struct RootTabView_Previews: PreviewProvider {
    static var previews: some View {
        RootTabView()
    }
}
