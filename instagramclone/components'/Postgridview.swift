//
//  Postgridview.swift
//  instagramclone
//
//  Created by Donald Colin on 24/02/24.
//

import SwiftUI

struct Postgridview: View {
    var posts : [post]
    let griditem:[GridItem]=[
        .init(.flexible(),spacing: 1),
        .init(.flexible(),spacing: 1),
        .init(.flexible(),spacing: 1)
    ]
    
    private let imageDimension :CGFloat = (UIScreen.main.bounds.width/3) - 1
    
    var body: some View {
        
        LazyVGrid(columns: griditem){
            ForEach(posts){ post in
                Image(post.imageurl)
                    .resizable()
                    .scaledToFit()
            }
        }
        
    }
    
    
    struct Postgridiew_Previews: PreviewProvider {
        static var previews: some View {
            Postgridview(posts: post.MOCK_POSTS)
        }
    }
}
