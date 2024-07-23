//
//  SwiftUIView.swift
//  instagramclone
//
//  Created by Donald colin on 12/09/23.
//

import SwiftUI

struct seachview: View {
    @State var search=""
    var body: some View {
      
        NavigationStack{
        ScrollView{
            ForEach(User.MOCK_USER){user in
                NavigationLink(value: user){
                    HStack{
                        Image(user.profileimageurl ?? "")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 40)
                            .clipShape(Circle())
                        
                        VStack(alignment: .leading){ Text(user.username)
                            
                                .fontWeight(.bold)
                            
                            
                            
                            if let fullname=user.fullname{
                                Text(fullname)
                            }
                            
                        };Spacer()
                    }.padding(.leading)
                        .foregroundColor(.black)
                }.navigationDestination(for: User.self, destination:{user in profileview(user: user)
                                        })
            }
            }.navigationTitle("explore")
                .navigationBarTitleDisplayMode(.inline)
                .searchable(text:$search)
        }
    }
}

struct searchview_Previews: PreviewProvider {
    static var previews: some View {
        seachview()
    }
}
