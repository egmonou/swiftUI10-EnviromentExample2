//
//  ContentView.swift
//  EnviromentExample
//
//  Created by administrator on 22/09/2024.
//

import SwiftUI

@Observable class PersonViewModel {
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
    
    @Environment(PersonViewModel.self) private var personViewModel

    var body: some View {
        @Bindable var personViewModel = personViewModel

        VStack {
            
            Text(personViewModel.getName)
            
            TextField("Enter Your First Name", text: $personViewModel.firsName)
                .textFieldStyle(RoundedBorderTextFieldStyle())
    
            Button("Change Person") {
                personViewModel.changePerson()
            }
        }
        .padding()
    }
}

#Preview {
    ContentView()
        .environment(PersonViewModel())
}
