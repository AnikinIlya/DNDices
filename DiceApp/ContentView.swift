//
//  ContentView.swift
//  DiceApp
//
//  Created by Anikin Ilya on 15.11.2021.
//

import SwiftUI

struct ContentView: View {
    
    @State var diceCount: Int = 1
    @State var diceFace: Image = Image("dice1")
    @State var minValueAlert: Bool = false
    @State var maxValueAlert: Bool = false

// Randomizing function
    func DiceRandomizer(){
        let diceValue = Int.random(in: 1...6)
        self.diceFace = Image("dice\(diceValue)")
    }
    
    var body: some View {
        ZStack{
            
// Logo and background
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
                
// Dices
                VStack{
                    Spacer()
                    
                    HStack{
                        Spacer()
                        
                        diceFace
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 100)
                        Spacer()
                        
                        if diceCount > 1{
                            diceFace
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .frame(width: 100)
                            Spacer()
                        }
                        else{
                        }
                        
                        if diceCount > 2{
                            diceFace
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
                        
                        if diceCount > 3{
                            Spacer()
                            
                            diceFace
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .frame(width: 100)
                            Spacer()
                        }
                        else{
                        }
                        
                        if diceCount > 4{
                            diceFace
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .frame(width: 100)
                            Spacer()
                        }
                        else{
                        }
                        
                        if diceCount > 5{
                            diceFace
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
                        
                        if diceCount > 6{
                            Spacer()
                            
                            diceFace
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .frame(width: 100)
                            Spacer()
                        }
                        else{
                        }
                        
                        if diceCount > 7{
                            diceFace
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .frame(width: 100)
                            Spacer()
                        }
                        else{
                        }
                        
                        if diceCount > 8{
                            diceFace
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
// Button to decrease number of dices
                    Button(action: {
                        if diceCount > 1{
                            diceCount -= 1
                        }
                        else{
                            minValueAlert.toggle()
                        }
                        
                    }, label: {
                        Image (systemName: "minus.square.fill")
                            .padding()
                            .tint(.white)
                            .background(.black)
                            .cornerRadius(10)
                    })
                        .alert(isPresented: $minValueAlert, content: {
                            Alert(
                                title: Text("Minimum number of dices"),
                                message: Text("You have reached the minimum number of dices."),
                                dismissButton: .cancel())
                        })
                    Spacer()
                    
// Button to increase number of dices
                    Button(action: {
                        if diceCount < 9{
                            diceCount += 1
                        }
                        else{
                            maxValueAlert.toggle()
                        }
                        
                    }, label: {
                        Image (systemName: "plus.square.fill")
                            .padding()
                            .tint(.white)
                            .background(.black)
                            .cornerRadius(10)
                        
                    })
                        .alert(isPresented: $maxValueAlert, content: {
                            Alert(
                                title: Text("Maximum number of dices"),
                                message: Text("You have reached the maximum number of dices."),
                                dismissButton: .cancel())
                        })
                    Spacer()
                    
// Button to Roll dices
                    Button("Roll Dice",
                           action: {DiceRandomizer()})
                        .padding()
                        .padding(.horizontal)
                        .background(.black)
                        .foregroundColor(.white)
                        .cornerRadius(10)
                    Spacer()
                }
                Spacer()
            }
        } // End body
        
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .previewInterfaceOrientation(.portrait)
    }
}
