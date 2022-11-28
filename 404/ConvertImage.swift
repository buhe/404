//
//  ConvertImage.swift
//  404
//
//  Created by 顾艳华 on 2022/11/28.
//

import SwiftUI

struct ConvertImage: View {
    @ObservedObject var vm: ViewModel
    
    var body: some View {
        ScrollView {
            VStack {
                TextField("rawText", text: $vm.model.rawText, axis: .vertical).lineLimit(15...15).padding()
                NavigationView {
                HStack {
                         Button{
                             vm.encodingImage()
                         } label: {
                           Text("编码")
                         }
                        Button{
                            vm.decodingImage()
                        } label: {
                          Text("解码")
                        }
                        Picker("method?", selection: $vm.model.method) {
                             ForEach(vm.model.methods, id: \.self) {
                                 Text($0)
                             }
                         }.frame(minWidth: 100)
    //                    Toggle("With", isOn: $with).labelsHidden()
                        ShareLink(item: vm.model.encoding) {
                            Label("分享", systemImage:  "square.and.arrow.up")
                        }
                        Spacer()
                    }
                }.frame(maxHeight: 44).padding()
       
                TextField("resultText", text: $vm.model.encoding, axis: .vertical).lineLimit(15...15).padding()
            }
        }.tabItem{Label("图片", systemImage: "photo")}
    }
}

//struct ConvertImage_Previews: PreviewProvider {
//    static var previews: some View {
//        ConvertImage()
//    }
//}
