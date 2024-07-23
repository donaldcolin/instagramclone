//
//  password.swift
//  instagramclone
//
//  Created by Donald colin on 12/09/23.
//

import SwiftUI

struct password: View {
    @State var pword=""
    var body: some View {
        VStack{
            Text("Add your password")
                .font(.title3)
                .fontWeight(.bold)
            Text("you'll use this username to sign up for instagram")
                .padding(.top)
            
            
            TextField("Enter your password", text: $pword)
                .autocapitalization(.none)
            .modifier(igtext())
            TextField("confirm password", text: $pword)
                .autocapitalization(.none)
            .modifier(igtext())
            
            NavigationLink {
                welcomeview()
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

struct password_Previews: PreviewProvider {
    static var previews: some View {
        password()
    }
}
