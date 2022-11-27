//
//  ViewModel.swift
//  404
//
//  Created by 顾艳华 on 2022/11/27.
//

import Foundation

class ViewModel: ObservableObject {
    @Published var model = Model()
    
    func encoding() {
        switch model.method {
        case "Base64": model.encoding = model.rawText.data.base64EncodedString()
        default: break
        }
    }
    
    func decoding() {
        switch model.method {
        case "Base64": model.encoding = model.rawText.data.base64Decoded?.string ?? ""
        default: break
        }
    }
}
