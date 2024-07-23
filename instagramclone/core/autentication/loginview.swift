//
//  loginview.swift
//  instagramclone
//
//  Created by Donald colin on 12/09/23.
//

import SwiftUI

struct loginview: View {
    @State var email=""
    @State var pass=""
    var body: some View {
        NavigationStack{
            VStack{
               
                Image("logo_ins")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 380)
               
                VStack{
                    
                    TextField("Enter Username", text: $email)
                        .autocapitalization(.none)
                        .modifier(igtext())
                    SecureField("Enter Password", text: $pass)
                        .font(.subheadline)
                        .frame(height:40)
                        .background(Color(.systemGray6))
                        .cornerRadius(10)
                        .padding(.leading, 4.0)
                        .padding(.horizontal,7)
                        
                    Button {
                        print("show password")
                    } label: {
                        Text("forgot password?")
                    }
                    .padding(.trailing, 14.0)
                    .frame(maxWidth: .infinity,alignment: .trailing)

                    Button {
                        print("show password")
                    } label: {
                        Text("Log In")
                            .font(.subheadline)
                            .fontWeight(.bold)
                            .foregroundColor(Color.white)
                            .frame(width: 360,height: 44)
                            .background(Color(.systemBlue))
                            .cornerRadius(10)
                    }
                    
                    .padding(.trailing, 14.0)
                    Spacer()
                    HStack{
                        Image("Fb")
                            .resizable()
                            .scaledToFill()
                            .frame(width: 40,height: 40)
                        Text("Continue with facebook?")
                    }
                    Divider()
                    
                    NavigationLink {
                 registerview()
                    } label: {
                        HStack{
                            Text("Don't have account")
                            Text("sign up")
                            
                        }
                    }

                }
            }
        }
    }
}

struct loginview_Previews: PreviewProvider {
    static var previews: some View {
        loginview()
    }
}
