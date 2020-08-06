//
//  postDAta.swift
//  H4XOR News
//
//  Created by Hady on 7/7/20.
//  Copyright © 2020 HadyOrg. All rights reserved.
//

import Foundation

struct Results : Decodable {
  
    let hits : [Post]
    
}

struct Post : Decodable , Identifiable{
    var id : String {
        return objectID
    }
    let objectID : String
    let points : Int
    let title : String
    let url : String?
}
