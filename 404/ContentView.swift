//
//  ContentView.swift
//  404
//
//  Created by 顾艳华 on 2022/11/27.
//

import SwiftUI

struct ContentView: View {
    @ObservedObject var vm: ViewModel
//    @State var rawText: String = "A text field will occupy at least the number of lines you specified and then grow as the content grow.A text field will occupy at least the number of lines you specified and then grow as the content grow.A text field will occupy at least the number of lines you specified and then grow as the content grow.A text field will occupy at least the number of lines you specified and then grow as the content grow.A text field will occupy at least the number of lines you specified and then grow as the content grow.A text field will occupy at least the number of lines you specified and then grow as the content grow"
//    @State var encoding: String = "A text field will occupy at least the number of lines you specified and then grow as the content grow.A text field will occupy at least the number of lines you specified and then grow as the content grow.A text field will occupy at least the number of lines you specified and then grow as the content grow.A text field will occupy at least the number of lines you specified and then grow as the content grow.A text field will occupy at least the number of lines you specified and then grow as the content grow.A text field will occupy at least the number of lines you specified and then grow as the content grow"
    
//    var cities = ["Base64", "Milan", "Venice", "Florence"]
//
//    @State private var selected = "Base64"
    @State var with: Bool = true

    var body: some View {
        VStack {
            TextField("rawText", text: $vm.model.rawText, axis: .vertical).lineLimit(4...20).padding()
            NavigationView {
                HStack {
                 Button{
                     vm.encoding()
                 } label: {
                   Text("编码")
                 }
                Button{
                    vm.decoding()
                } label: {
                  Text("解码")
                }
                    Picker("method?", selection: $vm.model.method) {
                     ForEach(vm.model.methods, id: \.self) {
                         Text($0)
                     }
                 }.frame(minWidth: 100)
//                    Toggle("With", isOn: $with).labelsHidden()
                        
                }
            }.frame(maxHeight: 44)
   
            TextField("resultText", text: $vm.model.encoding, axis: .vertical).lineLimit(4...20).padding()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        let vm = ViewModel()
        ContentView(vm: vm)
    }
}
