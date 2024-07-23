//
//  Uploadpostview.swift
//  instagramclone
//
//  Created by Donald Colin on 26/02/24.
//

import SwiftUI
import PhotosUI

struct Uploadpostview: View {
    @State private var caption = ""
    @State private var imagepicker = false
    @State private var photoitem :PhotosPickerItem?
    var body: some View {
        VStack{
            HStack{
                Button{
                    print("upload")}
            label: {
                Text("upload")}
                
                Spacer()
                
                Text("new post")
                
                Spacer()
                
                Button{
                    print("cancel")
                }
            label: {
                Text("cancel")
                
            }
            }.padding(.horizontal)
                HStack{
                    Image("post_1")
                        .resizable()
                        .frame(width: 100 ,height: 100)
                    TextField("enter your caption", text: $caption, axis: .vertical)
                }.padding(.horizontal)
                Spacer()
        }.onAppear{
            imagepicker.toggle()
        }
        
            .photosPicker(isPresented:$imagepicker, selection: $photoitem)
            
        
    }
}

        struct Uploadpostview_Previews: PreviewProvider {
            static var previews: some View {
                Uploadpostview()
            }
        }

