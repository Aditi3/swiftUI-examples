//
//  NetworkManager.swift
//  NewsReader
//
//  Created by Aditi Agrawal on 16/06/21.
//

import Foundation

class NetworkManager: ObservableObject {
    
    @Published var posts = [Post]()
    
    private let hnURL = "http://hn.algolia.com/api/v1/search?tags=front_page"
    
    
    func fetchData() {
        // Create a URL
        guard let url = URL(string: hnURL) else { return }
        // Give session a task
        let session = URLSession(configuration: .default)
        let task = session.dataTask(with: url, completionHandler: { data, response, error in
            if error != nil {
                print("Error requesting hacker news data \(error.debugDescription)")
                return
            }
            if let safeData = data {
                do {
                    let decoder = JSONDecoder()
                    let results = try decoder.decode(Results.self, from: safeData)
                    DispatchQueue.main.async {
                        self.posts = results.hits
                    }
                } catch {
                    print("Error parsing the Json \(error)")
                }
            }
        })
        // Start a task
        task.resume()
    }
    
}
