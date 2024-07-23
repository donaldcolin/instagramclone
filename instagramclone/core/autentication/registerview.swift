//
//  registerview.swift
//  instagramclone
//
//  Created by Donald colin on 12/09/23.
//

import SwiftUI

struct registerview: View {
    @State var email=""
    var body: some View {
        VStack{
            Text("Add your email")
                .font(.title3)
                .fontWeight(.bold)
            Text("you'll use this email to sign up for instagram")
                .padding(.top)
            
            
            TextField("Enter Email or phone number", text: $email)
                .autocapitalization(.none)
                .modifier(igtext())
            NavigationLink {
                    username()
            } label: {
                Text("Sign up")
                    .font(.subheadline)
                    .fontWeight(.bold)
                    .foregroundColor(Color.white)
                    .frame(width: 360,height: 44)
                    .background(Color(.systemBlue))
                    .cornerRadius(10)
            }.padding()
        }.padding()
        
    }
    
}

struct registerview_Previews: PreviewProvider {
    static var previews: some View {
        registerview()
    }
}
