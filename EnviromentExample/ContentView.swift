//
//  ContentView.swift
//  EnviromentExample
//
//  Created by administrator on 22/09/2024.
//

import SwiftUI

@Observable class PersonViewMOdel {
    var firsName: String = "Ron"
    var lastName: String = "Erez"
    
    var getName: String {
        return "\(firsName) \(lastName)"
    }
    
    func changePerson() {
        let names: [(String, String)] = [
            ("Bird", "Bird"),
            ("Elmo", ""),
            ("Cookie", "MOnster"),
            ("Bert", "Erne"),
        ]
        let randomName: (String, String) = names.randomElement() ?? ("", "")
        
        firsName = randomName.0
        lastName = randomName.1

    }
}

struct ContentView: View {
    @Environment(PersonViewMOdel.self) private var personviewmodel
    var body: some View {
        VStack {
            Text(personviewmodel.getName)
            Button("Change Person") {
                personviewmodel.changePerson()
            }
        }
        .padding()
    }
}

#Preview {
    ContentView()
        .environment(PersonViewMOdel())
}
