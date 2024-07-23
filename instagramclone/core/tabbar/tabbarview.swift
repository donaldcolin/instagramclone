//
//  tabbarview.swift
//  instagramclone
//
//  Created by Donald colin on 11/09/23.
//

import SwiftUI

struct tabbarview: View {
    var body: some View {
        TabView{
            feedview()
                .tabItem {Image(systemName:"house")}
         seachview()    
                .tabItem {Image(systemName:"magnifyingglass")}
          Uploadpostview()
                .tabItem {Image(systemName:"plus.square")}
            Text("notification")
                .tabItem {Image(systemName:"heart")}
            currentprofileuserview(user: User.MOCK_USER[0])
                .tabItem {Image(systemName:"person")}
                    }
        .accentColor(.black)
                                }
                        }
                    
                

struct tabbarview_Previews: PreviewProvider {
    static var previews: some View {
        tabbarview()
    }
}
