//
//  ContentView.swift
//  H4X0R News
//
//  Created by Sagar Baloch on 23/04/2020.
//  Copyright © 2020 Sagar Baloch. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView{
        List{
            Text("Hello, World!")
            Text("Good Bye World")
            }
            .navigationBarTitle("H4X0R News")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
