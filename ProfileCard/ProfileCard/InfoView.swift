//
//  InfoView.swift
//  ProfileCard
//
//  Created by Aditi Agrawal on 15/06/21.
//

import SwiftUI

struct InfoView: View {
    
    let text: String
    let imageName: String
    
    var body: some View {
        RoundedRectangle(cornerRadius: 20)
            .frame(height: 40)
            .foregroundColor(.white)
            .overlay(  HStack {
                Image(systemName: imageName)
                    .foregroundColor(.black)
                Text(text)
            })
            .padding(.all)
    }
}

struct InfoView_Previews: PreviewProvider {
    static var previews: some View {
        InfoView(text: "Hello", imageName: "mail.fill")
            .previewLayout(.sizeThatFits)
    }
}
