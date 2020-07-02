//
//  PostData.swift
//  H4X0R
//
//  Created by Justyna Kowalkowska on 02/06/2020.
//  Copyright © 2020 Justyna Kowalkowska. All rights reserved.
//

import Foundation

struct Results: Decodable {
    let hits: [Post]
    
}

struct Post: Decodable, Identifiable {
    var id: String {
        return objectID
    }
    let objectID: String
    let points: Int
    let title: String
    let url: String?
}
