//
//  username.swift
//  instagramclone
//
//  Created by Donald colin on 12/09/23.
//

import SwiftUI

struct username: View {
    var body: some View {
        @State var urname=""
        VStack{
            Text("Add your username")
                .font(.title3)
                .fontWeight(.bold)
            Text("you'll use this username to sign up for instagram")
                .padding(.top)
            
            
            TextField("Enter your username", text: $urname)
                .autocapitalization(.none)
                .modifier(igtext())
            NavigationLink {
                password()
            } label: {
                Text("Sign up")
                    .font(.subheadline)
                    .fontWeight(.bold)
                    .foregroundColor(Color.white)
                    .frame(width: 360,height: 44)
                    .background(Color(.systemBlue))
                .cornerRadius(10)}
        }
    }
}

struct username_Previews: PreviewProvider {
    static var previews: some View {
        username()
    }
}
