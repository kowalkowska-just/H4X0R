//
//  NetworkManager.swift
//  H4X0R
//
//  Created by Justyna Kowalkowska on 02/06/2020.
//  Copyright © 2020 Justyna Kowalkowska. All rights reserved.
//

import Foundation

class NetworkManager: ObservableObject {
    
    @Published var posts = [Post]()
    
    func fetchData() { //pobierz dane
        
        if let url = URL(string: "http://hn.algolia.com/api/v1/search?tags=front_page") {
            let session = URLSession(configuration: .default) //domyslna konfiuracja
            // \/ otrzymujemy completionHandler z danymi, ktore otrzymujemy w odpowiedzi i bledy
            let task = session.dataTask(with: url) { (data, response, error) in
                if error == nil {
                    let decoder = JSONDecoder()
                    if let safeData = data {
                        do {
                            let results = try decoder.decode(Results.self, from: safeData)
                            DispatchQueue.main.async {
                                self.posts = results.hits
                            }
                        } catch {
                            print(error)
                        }
                    }
                }
            }
            task.resume()
        }
    }
}
