//
//  Sign.swift
//  SwiftUIBugReproducing
//
//  Created by Alexander Kazansky on 03.01.2021.
//

import Foundation

struct Sign: Identifiable {
    let id: Int
    let value: String
}

func sampleSignArray() -> [Sign] {
    
//    var arr = [Sign]()
//    for i in 1...100 {
//        arr.append(Sign(id: i, value: "\(i)"))
//    }
//    return arr
    
    return [
        Sign(id: 1, value: "one"),
        Sign(id: 2, value: "two"),
        Sign(id: 3, value: "three"),
        Sign(id: 4, value: "four")
    ]
}
