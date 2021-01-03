//
//  ExternalList.swift
//  SwiftUIBugReproducing
//
//  Created by Alexander Kazansky on 01.01.2021.
//

import SwiftUI

struct ExternalList: View {
    
    let array = sampleSignArray()
    
    var body: some View {
        VStack {
            Text("Extenal list")
            List(array) { sign in
                Text("\(sign.id): \(sign.value)")
            }
        }
    }
}

struct ExternalList_Previews: PreviewProvider {
    static var previews: some View {
        ExternalList()
    }
}
