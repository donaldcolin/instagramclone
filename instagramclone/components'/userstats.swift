//
//  userstats.swift
//  instagramclone
//
//  Created by Donald colin on 11/09/23.
//

import SwiftUI

struct userstats: View {
    let value:Int
    let title: String
    var body: some View {
        VStack{
            Text("\(value)")
                .font(.subheadline)
            Text(title)
                .font(.footnote)
        }.frame(width: 80)
    }
}

struct userstats_Previews: PreviewProvider {
    static var previews: some View {
        userstats(value: 3, title: "posts")
    }
}
