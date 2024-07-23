//
//  feedcell.swift
//  instagramclone
//
//  Created by Donald colin on 11/09/23.
//

import SwiftUI

struct feedcell: View {
    let post : post
    var body: some View {
        VStack{
            HStack{
                //image and username
                if let user = post.user{
                    Image(user.profileimageurl ?? "")
                        .resizable()
                        .scaledToFill()
                        .frame(width:40,height: 40)
                        .clipShape(Circle())
                    Text(user.username)
                        .fontWeight(.bold)
                }
                Spacer()
            }.padding(.leading)
            
            Image(post.imageurl)
                .resizable()
                .scaledToFill()
                .frame(height: 400)
                .clipShape(Rectangle())
            HStack(spacing: 9){
                // like, comment and share
                Button {
                    print("\(post.user?.username ?? "")likes")
                } label: {
                    Image(systemName: "heart")
                        .imageScale(.large)
                }
                Button {
                 print("comment")
                } label: {
                    Image(systemName: "bubble.right")
                        .imageScale(.large)
                }

                Button {
                 print("share")
                } label: {
                    Image(systemName: "paperplane")
                        .imageScale(.large)
                }
                Spacer()
            }.foregroundColor(.black)
                .padding(.leading,8)
            
     
                // like count
            Text("\(post.likes) likes")
            .font(.footnote)
            .fontWeight(.semibold)
            .frame(maxWidth: .infinity,alignment: .leading)
            .padding(.leading,8)
                .padding(.top,4)
            HStack{
                Text("\(post.user?.username ?? "") ").fontWeight(.bold) +
                Text(post.caption)
                Spacer()
            } .font(.footnote)
                .fontWeight(.semibold)
                .frame(maxWidth: .infinity,alignment: .leading)
                .padding(.leading,8)
                    .padding(.top,4)

                Text("2hr ago")

                    .font(.footnote)
                    .fontWeight(.semibold)
                    .frame(maxWidth: .infinity,alignment: .leading)
                    .padding(.leading,8)
                    .padding(.top,4)
        }
    }
}

struct feedcell_Previews: PreviewProvider {
    static var previews: some View {
        feedcell(post: post.MOCK_POSTS[1])
    }
}
