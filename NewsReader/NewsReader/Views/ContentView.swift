//
//  ContentView.swift
//  NewsReader
//
//  Created by Aditi Agrawal on 16/06/21.
//

import SwiftUI

struct ContentView: View {
    
    @ObservedObject var networkManager = NetworkManager()
    
    var body: some View {
        NavigationView {
            List(networkManager.posts) { post in
                HStack {
                    Text(String(post.points))
                        .padding()
                    Text(post.title)
                        .padding()
                }
            }
            .navigationBarTitle("Hacker News")
            
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


