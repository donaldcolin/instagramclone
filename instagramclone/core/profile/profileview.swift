//
//  SwiftUIView.swift
//  instagramclone
//
//  Created by Donald colin on 11/09/23.
//

import SwiftUI

struct profileview: View {
    let user: User
    let griditem:[GridItem]=[
        .init(.flexible(),spacing: 1),
        .init(.flexible(),spacing: 1),
        .init(.flexible(),spacing: 1)
        ]

    var posts:[post]{
        return post.MOCK_POSTS.filter({$0.user?.username==user.username})
    }
    var body: some View {
            ScrollView{
                
            Profileheaderview(user: user) //header
                Postgridview(posts:posts) //posts
            }
            .navigationTitle("profile")
            .navigationBarTitleDisplayMode(.inline)
                    }

                }
            


struct profileview_Previews: PreviewProvider {
    static var previews: some View {
        profileview(user: User.MOCK_USER[2])
    }
}
