//
//  currentprofileuserview.swift
//  instagramclone
//
//  Created by Donald colin on 13/09/23.
//

import SwiftUI

struct currentprofileuserview: View {
    
    let user: User
    var posts:[post]{
        return post.MOCK_POSTS.filter({$0.user?.username==user.username})
    }
    var body: some View {
        NavigationStack{
            ScrollView{
                Profileheaderview(user: user) //header
                
                Postgridview(posts:posts)//posts
                
                
                .padding()
            }
            .navigationTitle("profile")
            .navigationBarTitleDisplayMode(.inline)
            .toolbar {
                ToolbarItem(placement: .navigationBarTrailing){
                    Button {
                    
                    } label: {
                        Image(systemName:"line.3.horizontal")
                            .foregroundColor(.black)
                    }

                }
            }
        }
        }
    }

struct currentprofileuserview_Previews: PreviewProvider {
    static var previews: some View {
        currentprofileuserview(user:User.MOCK_USER[1])
    }
}
