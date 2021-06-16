//
//  ContentView.swift
//  DiceSwiftUIExample
//
//  Created by Aditi Agrawal on 16/06/21.
//

import SwiftUI

struct ContentView: View {
    
    @State var leftSideNumber = 1
    @State var rightSideNumber = 2
    
    var body: some View {
        ZStack {
            Color("bgColor")
            VStack {
                Spacer()
                HStack {
                    DiceView(n: leftSideNumber)
                    DiceView(n: rightSideNumber)
                }
                .padding(.horizontal)
                Spacer()
                Button(action: {
                    self.leftSideNumber = Int.random(in: 1...6)
                    self.rightSideNumber = Int.random(in: 1...6)
                    
                }) {
                    Text("Roll")
                        .font(.system(size: 30))
                        .fontWeight(.heavy)
                        .foregroundColor(.white)
                        .padding(.horizontal, 30)
                        .padding(.vertical, 10)
                }
                .background(Color.secondary)
                .cornerRadius(10)
                Spacer()
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .preferredColorScheme(.dark)
            .environment(\.sizeCategory, .small)
            .previewDevice("iPhone 12 Pro")
    }
}


struct DiceView: View {
    let n: Int
    var body: some View {
        Image("dice\(n)")
            .resizable()
            .aspectRatio(1, contentMode: .fit)
            .padding(.all)
    }
}

