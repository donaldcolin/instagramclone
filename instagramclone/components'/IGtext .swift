//
//  IGtext .swift
//  instagramclone
//
//  Created by Donald colin on 12/09/23.
//

import SwiftUI
struct igtext: ViewModifier{
    func body(content: Content) -> some View {
        content 
        .font(.subheadline)
        .frame(height:40)
        .background(Color(.systemGray6))
        .cornerRadius(10)
        .padding(.leading, 4.0)
        .padding(.horizontal,7)
    }
    
}
