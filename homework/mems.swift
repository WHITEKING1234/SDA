//
//  mems.swift
//  homework
//
//  Created by Mac on 10/1/23.
//

import Foundation
struct Mems:Codable{
    var name:String
//    var id:Int
//    var url:String
}

struct Data: Codable {
    var memes:[Mems]
    var name:String
//    var memes:String
//    var name:String
}
