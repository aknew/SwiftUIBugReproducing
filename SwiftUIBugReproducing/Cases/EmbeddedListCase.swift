//
//  ContentView.swift
//  SwiftUIBugReproducing
//
//  Created by Alexander Kazansky on 01.01.2021.
//

import SwiftUI

/// This code compiles without any warnings, but when when it runs, I don't see lists rows, only empty space instead it
/// Checked with Xcode 12.3 (12C33) on preview, simulator iPhone 11 iOS 14.3 and real device with iPad OS 14.3
struct EmbeddedListCase: View {
    
    let array = sampleSignArray()
    
    var body: some View {
        ScrollView { /// Workaround 1: use List instead ScrollView, it fixes patrly only internal Lists, but not External and create subscroll
            Text("Internal List")
            List(array) { sign in /// Workaround 2: use ForEach instead list it works fine, but it looks different from List by default and donesn't have scroll
                Text("\(sign.id): \(sign.value)")
            }
            ExternalList()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        EmbeddedListCase()
    }
}
