//
//  CounterView.swift
//  EnviromentExample
//
//  Created by administrator on 24/09/2024.
//

import SwiftUI

@Observable
class CounterViewModel {
    var counter = 0
}

struct CounterView: View {
    //@State var vm: CounterViewModel = CounterViewModel()
    @Bindable var vm: CounterViewModel = CounterViewModel()
    
    var body: some View {
        VStack {
            Text("Counter: \(vm.counter)")
            ButtonView(count: $vm.counter)
        }
    }
}

struct ButtonView: View {
    @Binding var count: Int
    
    var body: some View {
        Button {
            count += 1
        } label: {
            Text("Inctement")
        }

    }
}

#Preview {
    CounterView()
}
