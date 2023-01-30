//
//  ContentView.swift
//  AbsenceRecorder
//
//  Created by MIKHAEL LUKYANOV on 29/01/2023.
//

import SwiftUI

struct ContentView: View {
    var divisions: [Division]
    @State private var currentDate: Date = Date()
    
    var body: some View {
        
        NavigationView {
            
            List(divisions, id: \.self.code) { division in
                DivisionItem(division: division)
            }
            .navigationTitle(currentDate.getShortDate())
            .toolbar {
                ToolbarItem(placement: .navigationBarLeading) {
                    Button(action: { currentDate = currentDate.previousDate() }) {
                        Image(systemName: "arrow.backward")
                        //SF pro app for the images
                    }
                }
                ToolbarItem(placement: .navigationBarTrailing) {
                    Button(action: { currentDate = currentDate.nextDate() }) {
                        Image(systemName: "arrow.forward")
                        //SF pro app for the images
                    }
                }
                
            }
            
        }
    }
    

    
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(divisions: Division.examples)
    }
}
