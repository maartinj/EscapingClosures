//
//  EscapingBootcamp.swift
//  EscapingBootcamp
//
//  Created by Marcin Jędrzejak on 18/07/2023.
//

import SwiftUI

class EscapingViewModel: ObservableObject {
    
    @Published var text: String = "Hello"
    
    func getData() {
        let newData = downloadData()
        text = newData
    }
    
    func downloadData() -> String {
        return "New data!"
    }
    
    func downloadData2() -> String {
        return "New data!"
    }
}

struct EscapingBootcamp: View {
    
    @StateObject var vm = EscapingViewModel()
    
    var body: some View {
        Text(vm.text)
            .font(.largeTitle)
            .fontWeight(.semibold)
            .foregroundColor(.blue)
            .onTapGesture {
                vm.getData()
            }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        EscapingBootcamp()
    }
}
