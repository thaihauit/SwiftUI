//
//  ContentView.swift
//  Demo_swift_ui
//
//  Created by D.Ace on 5/4/20.
//  Copyright © 2020 D.Ace. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Text("Hello, World!")
                .padding(.bottom, 8.0)
            Text("Hello, World!")
                .padding(.bottom, 16.0)
            Text("Hello, World!")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
