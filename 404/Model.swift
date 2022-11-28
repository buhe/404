//
//  Model.swift
//  404
//
//  Created by 顾艳华 on 2022/11/27.
//

import Foundation

struct Model {
    static var methodsConst = ["Base64"]
    
    var methods = methodsConst
    
    var method = methodsConst[0]
    
    var rawText: String = "要编码的或者要解码的..."
    var encoding: String = "结果"
}
