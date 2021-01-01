//
//  ContentView.swift
//  SwiftUIBugReproducing
//
//  Created by Alexander Kazansky on 01.01.2021.
//

import SwiftUI

struct Sign: Identifiable {
    let id: Int
    let value: String
}

struct ContentView: View {
    
    let array = [
        Sign(id: 1, value: "one"),
        Sign(id: 2, value: "two"),
        Sign(id: 3, value: "three"),
        Sign(id: 4, value: "four")
    ]
    
    @State var field: String = "Test string"
    
    var body: some View {
        //ScrollView(.vertical) {
            VStack() {
                Text("Hello, world!")
//                List(array) { sign in
//                // ForEach(array) { sign in
//                    Text("\(sign.id): \(sign.value)")
//                }
                //ExternalList()
                Text("I am test app")
                Text("I am test app")
                Text("I am test app")
                TextField("", text: $field)
                Text("I am test app")
                Text("I am test app")
                Text("I am test app")
                Text("I am test app")
                Text("I am test app 10")
                Text("I am test app")
            }
        //}
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
