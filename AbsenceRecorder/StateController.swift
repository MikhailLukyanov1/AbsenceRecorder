//
//  StateController.swift
//  AbsenceRecorder
//
//  Created by MIKHAEL LUKYANOV on 01/02/2023.
//

import Foundation

class StateController: ObservableObject {
    @Published var divisions: [Division]
    
    init() {
        divisions = Division.examples
    }
}
    
