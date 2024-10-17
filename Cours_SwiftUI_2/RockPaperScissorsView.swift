//
//  RockPaperScissors.swift
//  Cours_SwiftUI_2
//
//  Created by Héloïse Le Lez on 16/10/2024.
//

import SwiftUI

struct RockPaperScissorsView: View {
    
    @StateObject var viewModel = MainViewModel()
    
    @State var choosed: Bool = false
    @State var appear: Bool = false
    
    
    var body: some View {
        ZStack{
            Color(AppParameters.secondaryBackgroundColor).ignoresSafeArea()
            VStack{
                
                Text("Rock Paper Scissors").font(.system(size: 32, design: .rounded))
                    .fontWeight(.heavy).padding(.top, 30)
                Spacer()
                
                if !choosed {
                    HStack(spacing:20){
                        RPSChoiceView(choice: "rock")
                            .onTapGesture {
                                viewModel.rockPaperScissors(choice: "rock")
                                choosed = true
                            }
                        
                        RPSChoiceView(choice: "paper").onTapGesture {
                            viewModel.rockPaperScissors(choice: "paper")
                            choosed = true
                        }
                        RPSChoiceView(choice: "scissors").onTapGesture {
                            viewModel.rockPaperScissors(choice: "scissors")
                            choosed = true
                        }
                    }
                }
                else {
                    VStack {
                        
                        HStack(spacing:20){
                            if viewModel.message == "win"{
                                Image(systemName: "party.popper.fill").resizable().frame(width: 50, height: 50)
                                    .foregroundStyle(AppParameters.secondaryColor)
                                    .padding(.bottom, -10)
                                    .onAppear{
                                        appear = true
                                    }
                                    .symbolEffect(.bounce, value: appear)
                                    .onDisappear{
                                        appear = false
                                    }
                                
                                Text("You \(viewModel.message) ! ")
                                    .font(.system(size: 32, design: .rounded))
                                    .padding(.top, 30)
                                
                                Image(systemName: "party.popper.fill")
                                    .resizable()
                                    .frame(width: 50, height: 50)
                                    .foregroundStyle(AppParameters.secondaryColor)
                                    .padding(.bottom, -10)
                                    .onAppear{
                                        appear = true
                                    }
                                    .symbolEffect(.bounce, value: appear)
                                    .onDisappear{
                                        appear = false
                                    }
                            }
                            if viewModel.message == "lose"{
                                Image(systemName: "hand.thumbsdown.fill")
                                    .resizable()
                                    .frame(width: 50, height: 50)
                                    .foregroundStyle(AppParameters.secondaryColor)
                                    .padding(.bottom, -10)
                                    .onAppear{
                                        appear = true
                                    }
                                    .symbolEffect(.bounce, value: appear)
                                    .onDisappear{
                                        appear = false
                                    }
                                
                                Text("You \(viewModel.message) ... ")
                                    .font(.system(size: 32, design: .rounded))
                                    .padding(.top, 30)
                                
                                Image(systemName: "hand.thumbsdown.fill")
                                    .resizable()
                                    .frame(width: 50, height: 50)
                                    .foregroundStyle(AppParameters.secondaryColor)
                                    .padding(.bottom, -10)
                                    .onAppear{
                                        appear = true
                                    }
                                    .symbolEffect(.bounce, value: appear)
                                    .onDisappear{
                                        appear = false
                                    }
                            }
                            if viewModel.message == "No one"{
                                Image(systemName: "figure.stand")
                                    .resizable()
                                    .frame(width: 35, height: 80)
                                    .foregroundStyle(AppParameters.secondaryColor)
                                    .padding(.bottom, -10)
                                Text("It's a draw")
                                    .font(.system(size: 32, design: .rounded))
                                    .padding(.top, 30)
                                
                                Image(systemName: "figure.stand")
                                    .resizable()
                                    .frame(width: 35, height: 80)
                                    .foregroundStyle(AppParameters.secondaryColor)
                                    .padding(.bottom, -10)
                            }
                        }
                        
                        HStack(spacing:20){
                            Image("\(viewModel.playerChoice)-removebg")
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .frame(width: 100, height: 150).cornerRadius(100).shadow(radius: 10)
                            
                            Image("\(viewModel.botChoice)-removebg")
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .frame(width: 100, height: 150).cornerRadius(100).shadow(radius: 10)
                            
                        }
                        
                        Button{
                            choosed = false
                        }label: {
                            ZStack{
                                RoundedRectangle(cornerSize: CGSize(width: 10, height: 10))
                                    .fill(AppParameters.secondaryColor)
                                    .frame(width: 190, height: 70)
                                Text("Play again")
                                    .fontWeight(.bold)
                                    .foregroundStyle(.black)
                                    .font(.system(size: 32, design: .rounded))
                            }
                        }
                    }
                }
                Spacer()
            }
        }
    }
}

#Preview {
    RockPaperScissorsView()
}
