//
//  RootTabView.swift
//  AbsenceRecorder
//
//  Created by MIKHAEL LUKYANOV on 01/02/2023.
//

import SwiftUI

struct RootTabView: View {
    var body: some View {
        TabView {
            DivisionsView(divisions: Division.examples)
                .tabItem {
                    Image(systemName: "square.and.pencil")
                    Text("Absences")
                }
            StatisticsView()
                .tabItem {
                    Image(systemName: "chart.pie.fill")
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