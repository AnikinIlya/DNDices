//
//  ContentView.swift
//  DiceApp
//
//  Created by Anikin Ilya on 15.11.2021.
//

import SwiftUI

struct ContentView: View {
    
    @State var diceFaceValue: [Image] = [Image("dice1")]
    
    @State var minValueAlert: Bool = false
    @State var maxValueAlert: Bool = false
    
    // Randomizing function
    func DiceRandomizer(){
        let count = diceFaceValue.count
        diceFaceValue.removeAll()
        for _ in 1...count{
            diceFaceValue.append(Image("dice\(Int.random(in: 1...6))"))
        }
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
                        
                        diceFaceValue[0]
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 100)
                        Spacer()
                        
                        if diceFaceValue.count > 1{
                            diceFaceValue[1]
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .frame(width: 100)
                            Spacer()
                        }
                        else{
                        }
                        
                        if diceFaceValue.count > 2{
                            diceFaceValue[2]
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
                        
                        if diceFaceValue.count > 3{
                            Spacer()
                            
                            diceFaceValue[3]
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .frame(width: 100)
                            Spacer()
                        }
                        else{
                        }
                        
                        if diceFaceValue.count > 4{
                            diceFaceValue[4]
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .frame(width: 100)
                            Spacer()
                        }
                        else{
                        }
                        
                        if diceFaceValue.count > 5{
                            diceFaceValue[5]
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
                        
                        if diceFaceValue.count > 6{
                            Spacer()
                            
                            diceFaceValue[6]
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .frame(width: 100)
                            Spacer()
                        }
                        else{
                        }
                        
                        if diceFaceValue.count > 7{
                            diceFaceValue[7]
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .frame(width: 100)
                            Spacer()
                        }
                        else{
                        }
                        
                        if diceFaceValue.count > 8{
                            diceFaceValue[8]
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
                        if diceFaceValue.count > 1{
                            diceFaceValue.removeLast()
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
                        if diceFaceValue.count < 9{
                            diceFaceValue.append(Image("dice1"))
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
                    Button(action:
                            {DiceRandomizer()
                    }, label:{
                        Text("Roll Dice")
                            .padding()
                            .padding(.horizontal)
                            .background(.black)
                            .foregroundColor(.white)
                            .cornerRadius(10)
                    })
                    Spacer()
                }
                Spacer()
            }
        }
    } // End body
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .previewInterfaceOrientation(.portrait)
    }
}
