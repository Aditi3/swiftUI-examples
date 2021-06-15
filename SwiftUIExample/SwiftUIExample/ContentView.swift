//
//  ContentView.swift
//  SwiftUIExample
//
//  Created by Aditi Agrawal on 15/06/21.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack{
            Color(.systemIndigo)
                .edgesIgnoringSafeArea(.all)
            VStack{
                Text("Animal Planet!")
                    .font(.system(size: 40.0))
                    .fontWeight(.bold)
                    .foregroundColor(.white)
                Image("animal").resizable().aspectRatio(contentMode: .fit)
                    .frame(width: 200, height: 200, alignment: .center)
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
