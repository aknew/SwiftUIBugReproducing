//
//  TenSubviewsCase.swift
//  SwiftUIBugReproducing
//
//  Created by Alexander Kazansky on 03.01.2021.
//

import SwiftUI

struct TenSubviewsCase: View {
    var body: some View {
        /// I got Extra argument in call error if I add more than 10 subviews to VStack, HStack, ScrollView or List
        /// Checked with Xcode 12.3 (12C33)
        VStack {
            /// Workaround - put some subviews into container
            Text("Hello, World! 1 ")
            Text("Hello, World! 2 ")
            Text("Hello, World! 3 ")
            Text("Hello, World! 4 ")
            Text("Hello, World! 5 ")
            Text("Hello, World! 6 ")
            Text("Hello, World! 7 ")
            Text("Hello, World! 8 ")
            Text("Hello, World! 9 ")
            Text("Hello, World! 10 ")
            //Text("Hello, World! 11 ")
        }
    }
}

struct TenSubviewsCase_Previews: PreviewProvider {
    static var previews: some View {
        TenSubviewsCase()
    }
}
