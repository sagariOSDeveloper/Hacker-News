//
//  ContentView.swift
//  H4X0R News
//
//  Created by Sagar Baloch on 23/04/2020.
//  Copyright © 2020 Sagar Baloch. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    
    @ObservedObject var networkManager = NetworkManager()
    
    var body: some View {
        NavigationView{
            List(networkManager.posts){ item in
                HStack {
                    Text(String(item.points))
                    Text(item.title)
                }
            }
            .navigationBarTitle("H4X0R News")
        }
        .onAppear{
            self.networkManager.fetchData()
            
        }
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

