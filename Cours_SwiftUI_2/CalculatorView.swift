//
//  CalculatorView.swift
//  Cours_SwiftUI_2
//
//  Created by Héloïse Le Lez on 16/10/2024.
//

import SwiftUI

struct CalculatorView: View {
    
    @StateObject var viewModel = MainViewModel()
    var body: some View {
        ZStack{
            Color(AppParameters.darkPrimaryColor).ignoresSafeArea()
            VStack{
                ZStack{
                    RoundedRectangle(cornerSize: CGSize(width: 10, height: 10)).fill(AppParameters.primaryColor).padding(20).padding(.vertical, 30)
                    Text(viewModel.display).font(.system(size: 40)).foregroundStyle(.white)
                }
                HStack{
                    Bouton(text: "AC").onTapGesture {
                        viewModel.buttonTapped(button: "AC")}
                    
                    Button{
                        if !viewModel.display.isEmpty{
                            viewModel.display.removeLast()
                            viewModel.currentInput = viewModel.display
                        }
                    }label:{
                        ZStack{
                            Circle().fill(AppParameters.backgroundColor)
                                .frame(height: 80)
                            Image(systemName: "delete.left.fill")
                                .resizable()
                                .frame(width: 30,height: 25)
                                .foregroundStyle(AppParameters.primaryColor)
                        }.padding(5)
                    }
                    
                    OperationBouton(text: "÷").onTapGesture {
                        if viewModel.operationAvailable{
                            viewModel.operationTapped(button: "÷")
                        }
                    }
                }
                HStack{
                    Bouton(text: "7")
                        .onTapGesture {
                            viewModel.buttonTapped(button: "7")
                        }
                    Bouton(text: "8")
                        .onTapGesture {
                            viewModel.buttonTapped(button: "8")
                        }
                    Bouton(text: "9")
                        .onTapGesture {
                            viewModel.buttonTapped(button: "9")
                        }
                    OperationBouton(text: "×")
                        .onTapGesture {
                            if viewModel.operationAvailable{
                                viewModel.operationTapped(button: "×")
                            }
                        }
                }
                HStack{
                    Bouton(text: "4")
                        .onTapGesture {
                            viewModel.buttonTapped(button: "4")}
                    Bouton(text: "5")
                        .onTapGesture {
                            viewModel.buttonTapped(button: "5")}
                    Bouton(text: "6")
                        .onTapGesture {
                            viewModel.buttonTapped(button: "6")}
                    OperationBouton(text: "-")
                        .onTapGesture {
                            if viewModel.operationAvailable{
                                viewModel.operationTapped(button: "-")
                            }
                        }
                }
                HStack{
                    Bouton(text: "1")
                        .onTapGesture {
                            viewModel.buttonTapped(button: "1")}
                    Bouton(text: "2")
                        .onTapGesture {
                            viewModel.buttonTapped(button: "2")}
                    Bouton(text: "3")
                        .onTapGesture {
                            viewModel.buttonTapped(button: "3")}
                    OperationBouton(text: "+")
                        .onTapGesture {
                            if viewModel.operationAvailable{
                                viewModel.operationTapped(button: "+")
                            }
                        }
                }
                
                HStack{
                    Bouton(text: "0")
                        .onTapGesture {
                            viewModel.buttonTapped(button: "0")}
                    OperationBouton(text: "=")
                        .onTapGesture {
                            viewModel.calculate(button: "=")}
                }
            }
        }
    }
}


#Preview {
    CalculatorView()
}
