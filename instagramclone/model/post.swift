//
//  postmodel.swift
//  instagramclone
//
//  Created by Donald colin on 15/09/23.
//

import Foundation
struct post : Identifiable, Hashable,Codable{
    let id: String
    let owneruid:String
    let caption : String
    let likes: Int
    let imageurl : String
    let timestamp: String
    var user : User?
}
extension post{
    static var MOCK_POSTS : [post]=[
        .init(id: NSUUID().uuidString,owneruid: NSUUID().uuidString, caption: "bitch, please", likes: 5, imageurl: "post_1", timestamp: "2 days ago", user: User.MOCK_USER[3]),
        .init(id: NSUUID().uuidString,owneruid: NSUUID().uuidString, caption: "knock knock ", likes: 5, imageurl: "post_11", timestamp: "10 hrs ago", user: User.MOCK_USER[0]),
        .init(id: NSUUID().uuidString,owneruid: NSUUID().uuidString, caption: "gg, please", likes: 5, imageurl: "post_10", timestamp: "1 hr ago", user: User.MOCK_USER[1]),
        .init(id: NSUUID().uuidString,owneruid: NSUUID().uuidString, caption: "slay, please", likes: 5, imageurl: "post_15", timestamp: "1096 hrs ago", user: User.MOCK_USER[2])
    
        
    ]
}

