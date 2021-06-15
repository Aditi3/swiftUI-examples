//
//  ContentView.swift
//  ProfileCard
//
//  Created by Aditi Agrawal on 15/06/21.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            Color(red: 0.00, green: 0.42, blue: 0.46)
                .edgesIgnoringSafeArea(.all)
            VStack {
                Image("profile")
                    .resizable().aspectRatio(contentMode: .fit)
                    .frame(width: 100.0, height: 100.0, alignment: .center)
                    .clipShape(Circle())
                    .overlay(Circle().stroke(Color.white, lineWidth: 5))
                Text("Aditi Agrawal ")
                    .font(.custom("DancingScript-Bold", size: 40))
                    .bold()
                    .foregroundColor(.white)
                Text("iOS Engineer")
                    .font(.system(size: 18))
                    .foregroundColor(.white)
                Divider()
                InfoView(text: "aditi.gvc@gmail.com", imageName: "envelope.fill")
                
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

