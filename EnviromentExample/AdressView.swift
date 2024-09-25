//
//  AdressView.swift
//  EnviromentExample
//
//  Created by administrator on 25/09/2024.
//

import SwiftUI
@Observable
class Address: Identifiable {
    var street: String
    var city: String
    var State: String
    var postalCode: Int
    var Country: String
    
    init(street: String = "\((1..<200).randomElement() ?? 1) Main Str",
         city: String = "CityVille",
         State: String = "Some State",
         postalCode: Int = 12345,
         Country: String = "USA") {
        self.street = street
        self.city = city
        self.State = State
        self.postalCode = postalCode
        self.Country = Country
    }
}



struct AdressView: View {
    @State var addresses = [Address(), Address(), Address()]
    var body: some View {
        List(addresses) {
            address in
            @Bindable var address = address
            
            TextField(address.street, text: $address.street)
        }
    }
}

#Preview {
    AdressView()
}
