//
//  ContentView.swift
//  H4X0R
//
//  Created by Justyna Kowalkowska on 02/06/2020.
//  Copyright © 2020 Justyna Kowalkowska. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    
//observed - zauwazony
    @ObservedObject var networkManager = NetworkManager()
    
    var body: some View {
        NavigationView {
            List(networkManager.posts){ post in
                NavigationLink(destination: DetalView(url: post.url)) {
                    HStack {
                        Text(String(post.points))
                        Text(post.title)
                    }
                }
            }
            .navigationBarTitle("H4X0R NEWS")
        }
        .onAppear {
            self.networkManager.fetchData()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

//let posts = [
//    Post(id: "1", title: "Hello1"),
//    Post(id: "2", title: "Hello2"),
//    Post(id: "3", title: "Hello3"),
//]
