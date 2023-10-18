//
//  ContentView.swift
//  Dicee-SwiftUI
//
//  Created by Terry Jason on 2023/10/18.
//

import SwiftUI

struct ContentView: View {
    @State private var leftDiceNumber = 1
    @State private var rightDiceNumber = 1
    
    var body: some View {
        ZStack {
            Image("background")
                .resizable()
                .ignoresSafeArea()
            VStack {
                Spacer()
                Image("diceeLogo")
                Spacer()
                HStack {
                    DiceView(n: leftDiceNumber)
                    DiceView(n: rightDiceNumber)
                }
                .padding()
                Spacer()
                Button {
                    leftDiceNumber = Int.random(in: 1...6)
                    rightDiceNumber = Int.random(in: 1...6)
                } label: {
                    Text("Roll")
                        .font(.system(size: 30))
                        .foregroundStyle(.white)
                        .padding()
                }
                .frame(width: 100)
                .background(Color.black)
                Spacer()
            }
        }
    }
}

struct DiceView: View {
    let n: Int
    
    var body: some View {
        Image("dice\(n)")
            .resizable()
            .scaledToFit()
            .padding()
    }
}

#Preview {
    ContentView()
}


