//
//  ContentView.swift
//  NewsReader
//
//  Created by Aditi Agrawal on 16/06/21.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView {
            List(posts) { post in
                Text(post.title)
            }
            .navigationBarTitle("Hacker News")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct Post: Identifiable {
    let id, title: String
}

let posts = [
    Post(id: "11", title: "Hello"),
    Post(id: "12", title: "World"),
]

