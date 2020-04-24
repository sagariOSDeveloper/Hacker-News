//
//  PostData.swift
//  H4X0R News
//
//  Created by Sagar Baloch on 23/04/2020.
//  Copyright © 2020 Sagar Baloch. All rights reserved.
//

import Foundation

struct Results:Decodable {
    let hits:[Post]
}
struct Post:Decodable,Identifiable {
    var id:String{
        return objectID
    }
    let title:String
    let url:String?
    let points:Int
    let objectID:String
}
