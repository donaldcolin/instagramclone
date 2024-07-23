//
//  feedview.swift
//  instagramclone
//
//  Created by Donald colin on 11/09/23.
//

import SwiftUI

struct feedview: View {
    var body: some View {
        NavigationView {
            ScrollView {
                ForEach(post.MOCK_POSTS) { post in
                    feedcell(post:post)
                }
                
                
            }
            .navigationBarTitle("feed")
            .navigationBarTitleDisplayMode(.inline)
            .toolbar {
                ToolbarItem(placement: .navigationBarLeading) {
                    Image("logo_ins")
                        .resizable()
                        .frame(width: 100, height: 32)
                }
                
                ToolbarItem(placement: .navigationBarTrailing) {
                    Button(action: {
                    }) {
                        Image(systemName: "heart")
                            .foregroundColor(.black)
                    }
                }
            }
        }
    }
}

struct feedview_Previews: PreviewProvider {
    static var previews: some View {
        feedview()
    }
}

