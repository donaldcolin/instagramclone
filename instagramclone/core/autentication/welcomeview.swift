//
//  welcomeview.swift
//  instagramclone
//
//  Created by Donald colin on 12/09/23.
//

import SwiftUI

struct welcomeview: View {
    var body: some View {
        VStack{
            Text("Welcome to instagram")
                .font(.title3)
                .fontWeight(.bold)
            Text("hkXCHIUGSCHSHCAIGI,DGHCH ")
                .padding(.top)
            
            Button{
                //username()
            } label: {
                Text(" COMPLETE  ,Sign up")
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

struct welcomeview_Previews: PreviewProvider {
    static var previews: some View {
        welcomeview()
    }
}
