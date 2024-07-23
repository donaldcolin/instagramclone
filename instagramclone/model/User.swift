//
//  user.swift
//  instagramclone
//
//  Created by Donald colin on 13/09/23.
//

import Foundation
struct User: Identifiable, Codable,Hashable{
    let id: String
    var username: String
    var profileimageurl: String?
    let email: String
    var fullname: String?
    var bio : String?
}
extension User {
    static var MOCK_USER: [User]=[
        .init(id: NSUUID().uuidString,
              username:"martha",
              profileimageurl:"post_11",
              email: "marsh@gmail.com",
              fullname: "martha wayne",
              bio:"dark knight's mom"),
            .init(id: NSUUID().uuidString,
                  username:"dj",
                  profileimageurl:"user_1",
                  email: "marsh2@gmail.com",
                  fullname: "dwanye barvo",
                  bio: "i play for csk"),
        .init(id: NSUUID().uuidString, 
              username:"alfred",
              profileimageurl:"user_10",
              email: "marsh1@gmail.com", 
              fullname: "bane",
              bio:"dark knight's sidekick"),
        .init(id: NSUUID().uuidString, 
              username:"bane",
              profileimageurl:"user_16",
              email: "marsh3@gmail.com",
              fullname:"i'm from a dark jail",
              bio:"  i appear in the dark knight series")]
}
