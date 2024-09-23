//
//  EnviromentExampleApp.swift
//  EnviromentExample
//
//  Created by administrator on 22/09/2024.
//

import SwiftUI

@main
struct EnviromentExampleApp: App {
    @State private var personViewModel = PersonViewMOdel()
    
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(personViewModel)
        }
    }
}
