//
//  Photo.swift
//  Unsplash_with_storyboard
//
//  Created by Gyeongjun Kim on 2023/08/20.
//

import Foundation

struct Photo : Codable{
    var thumbnail : String
    var username : String
    var likesCount : Int
    var createdAt : String
}
