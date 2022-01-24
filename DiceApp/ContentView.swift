//
//  ContentView.swift
//  DiceApp
//
//  Created by Anikin Ilya on 15.11.2021.
//

import SwiftUI

struct ContentView: View {
    
    @State var diceNumber = 1
    @State var diceFaceNumber: [Int] = []
    @State var dice = [1]
    
    var body: some View {
        
        ZStack{
            
            Image("background")
                .resizable()
                .ignoresSafeArea()
                
            
            VStack {
                Spacer()
                
                Image("logo")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .padding()
                    .frame(width: 200.0)
                Spacer()
                
                    
                    VStack{
                        Spacer()
                        
                        HStack{
                            Spacer()
                            
                            Image("dice\(dice[0])")
                                    .resizable()
                                    .aspectRatio(contentMode: .fit)
                                    .frame(width: 100)
                                Spacer()
                            
                            if diceNumber > 1{
                                Image("dice\(dice[1])")
                                    .resizable()
                                    .aspectRatio(contentMode: .fit)
                                    .frame(width: 100)
                                Spacer()
                            }
                            else{
                            }
                            
                            if diceNumber > 2{
                                Image("dice\(dice[2])")
                                    .resizable()
                                    .aspectRatio(contentMode: .fit)
                                    .frame(width: 100)
                                Spacer()
                            }
                            else{
                            }
                        }
                        Spacer()
                        
                        HStack{
                            
                            if diceNumber > 3{
                                Spacer()
                            
                                Image("dice\(dice[3])")
                                    .resizable()
                                    .aspectRatio(contentMode: .fit)
                                    .frame(width: 100)
                                Spacer()
                            }
                            else{
                            }
                            
                            if diceNumber > 4{
                                Image("dice\(dice[4])")
                                    .resizable()
                                    .aspectRatio(contentMode: .fit)
                                    .frame(width: 100)
                                Spacer()
                            }
                            else{
                            }
                            
                            if diceNumber > 5{
                                Image("dice\(dice[5])")
                                    .resizable()
                                    .aspectRatio(contentMode: .fit)
                                    .frame(width: 100)
                                Spacer()
                            }
                            else{
                            }
                        }
                        Spacer()
                        
                        HStack{
                            
                            if diceNumber > 6{
                                Spacer()
                            
                                Image("dice\(dice[6])")
                                    .resizable()
                                    .aspectRatio(contentMode: .fit)
                                    .frame(width: 100)
                                Spacer()
                            }
                            else{
                            }
                            
                            if diceNumber > 7{
                                Image("dice\(dice[7])")
                                    .resizable()
                                    .aspectRatio(contentMode: .fit)
                                    .frame(width: 100)
                                Spacer()
                            }
                            else{
                            }
                            
                            if diceNumber > 8{
                                Image("dice\(dice[8])")
                                    .resizable()
                                    .aspectRatio(contentMode: .fit)
                                    .frame(width: 100)
                                Spacer()
                            }
                            else{
                            }
                        }
                        Spacer()
                    }
                    Spacer()
                    
                
                HStack{
                    Spacer()
                    
                    Button(action: {
                        if diceNumber > 1{
                            diceNumber -= 1
                            dice.removeLast()
                        }
                        else{
                            print("min number of dices")
                        }
                        
                    }, label: {
                        Image (systemName: "minus.square.fill")
                            .padding()
                            .tint(.white)
                            .background(.black)
                            .cornerRadius(10)
                    })
                    Spacer()
                    
                    Button(action: {
                        if diceNumber < 9{
                            diceNumber += 1
                            dice.append(1)
                        }
                        else{
                            print("max number of dices")
                        }
                        
                    }, label: {
                        Image (systemName: "plus.square.fill")
                            .padding()
                            .tint(.white)
                            .background(.black)
                            .cornerRadius(10)
                            
                    })
                    Spacer()
                    
                    Button("Roll Dice",
                           action: {
                        diceFaceNumber.removeAll()
                        for i in dice{
                            diceFaceNumber.append(Int.random(in: 1...6))
                            dice = diceFaceNumber
                        }

                    })
                        .padding()
                        .padding(.horizontal)
                        .background(.black)
                        .foregroundColor(.white)
                        .cornerRadius(10)
                    Spacer()
                }
                Spacer()
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
.previewInterfaceOrientation(.portrait)
    }
}
