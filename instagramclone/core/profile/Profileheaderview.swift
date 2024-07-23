//
//  Profileheaderview.swift
//  instagramclone
//
//  Created by Donald Colin on 26/02/24.
//

import SwiftUI

struct Profileheaderview: View {
    let user:User
    var body: some View {
        
        // pic and stuff
        HStack{
            // followers and postcount
            Image(user.profileimageurl ?? "")
                .resizable()
                .frame(width: 80,height: 80)
                .clipShape(Circle())
                
            
            Spacer()
            
            HStack(spacing: 4){
                userstats(value: 3, title: "posts")
                userstats(value: 3, title: "followers")
                userstats(value: 3, title: "following")
            }
        }
        
        VStack(alignment: .leading, spacing: 4)
        {
            //name and bio
            if let fullname  = user.fullname{
                Text(fullname)
                    .font(.title2)
                    .fontWeight(.medium)
            }
            if let bio = user.bio{
                Text(bio)
                    .font(.body)
                    .fontWeight(.light)
            }
             
        }
        
        .frame(maxWidth: .infinity, alignment: .leading)
        
        Button {
        } label: {
            Text("edit profile")
                .font(.subheadline)
                .fontWeight(.semibold)
                .frame(width: 360, height: 32)
                .foregroundColor(Color.black)
                .overlay(RoundedRectangle(cornerRadius: 6).stroke(Color.gray,lineWidth: 1))
        }
        Divider()
        
    }
}

#Preview {
    Profileheaderview(user: User.MOCK_USER[0])
}
