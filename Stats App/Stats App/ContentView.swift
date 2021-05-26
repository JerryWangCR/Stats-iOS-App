//
//  ContentView.swift
//  Stats App
//
//  Created by Jerry Wang on 2021-05-09.
//

import SwiftUI

struct ContentView: View {
    @State var NewDice  = "Dice1"
    @State var Mean = 0
    @State var Variance = 0
    @State var dice1 = 0
    @State var dice2 = 0
    @State var dice3 = 0
    @State var dice4 = 0
    @State var dice5 = 0
    @State var dice6 = 0
    @State var num = 0
    var body: some View {
        ZStack {
            Image("Background")
                .frame(width: 415.0, height: 915.0)
            
            VStack{
                Spacer()
                Image("Logo2")
                Spacer()
                
                Image(NewDice)
                
                Spacer()
                HStack{
                    Spacer()
                    VStack {
                        Text("Mean :")
                            .font(.title)
                            .foregroundColor(Color.white)
                        Text(String(Mean))
                            .font(.title)
                            .foregroundColor(Color.white)
                    }
                    Spacer()
                    VStack {
                        Text("Variance :")
                            .font(.title)
                            .foregroundColor(Color.white)
                        Text(String(Variance))
                            .font(.title)
                            .foregroundColor(Color.white)
                    }
                    Spacer()
                }
                Spacer()
                Button(action: {
                    let diceRoll = Int.random(in: 1...6)
                    num = num + 1
                    NewDice = "Dice" + String(diceRoll)
                    
                    if (diceRoll == 1) {
                        dice1 = dice1 + 1
                    } else if (diceRoll == 2) {
                        dice2 = dice2 + 1
                    } else if (diceRoll == 3) {
                        dice3 = dice3 + 1
                    } else if (diceRoll == 4) {
                        dice4 = dice4 + 1
                    } else if (diceRoll == 5) {
                        dice5 = dice5 + 1
                    } else {
                        dice6 = dice6 + 1
                    }
                    
                    let Total = dice1 + (dice2 * 2) + (dice3 * 3) + (dice4 * 4) + (dice5 * 5) + (dice6 * 6)
                    Mean = Total
                    let Square = dice1 + (4 * dice2) + (9 * dice3) + (16 * dice4) + (25 * dice5) + (36 * dice6)
                    Variance = Square - Int(Mean * Mean)
                }, label: {
                    Image("Roll")
                })
                Spacer()
            }
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
