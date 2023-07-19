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
        downloadData2 { (returnedData) in
            text = returnedData
        }
    }
    
    func downloadData() -> String {
        return "New data!"
    }
    
    func downloadData2(completionHandler: (_ data: String) -> Void) {
        completionHandler("New data!")
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
