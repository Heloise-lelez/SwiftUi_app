//
//  MainViewModel.swift
//  Cours_SwiftUI_2
//
//  Created by Héloïse Le Lez on 15/10/2024.
//

import Foundation


class MainViewModel: ObservableObject{
    
    @Published var isValid = false
    
    //Calculator
    
    @Published var display = ""
    var currentInput = ""
    var previousValue = 0
    var currentOperation: String? = nil
    var result:Int = 0
    var operation: String = ""
    
    var operationAvailable: Bool = true
    
    //RPS
    
    @Published var botChoice: String = ""
    @Published var playerChoice: String = ""
    @Published var message:String = ""
    
    // Memory
    
    @Published var shuffledArray:[Duck]=[]
    @Published var isRevealed = false
    
    func checkConnection(login:String, password:String){
        if let realPassword = DataController.registredUsers[login]{
            if realPassword == password {
                isValid = true
            }else{
                isValid = false
            }
        }else{
            isValid = false
        }
    }
    
    
    //Calculator
    
    func buttonTapped(button:String){
        if let number = Int(button) {
            currentInput = currentInput + button
            display = display + button
        }
        else if button == "AC"{
            display = ""
            currentInput = display
        }
    }
    func calculate(button:String){
        
        if let number = Int(currentInput) {
            switch operation {
            case "+":
                result = previousValue + number
            case "-":
                result = previousValue - number
            case "×":
                result = previousValue * number
            case "÷":
                result = previousValue / number
            default:
                break
            }
        }
        display = String(result)
        currentInput = display
        operationAvailable = true
    }
    func operationTapped(button:String){
        operation = button
        display = display + operation
        previousValue = Int(currentInput) ?? 0
        operationAvailable = false
        currentInput = ""
    }
    
    //RPS
    
    func rockPaperScissors(choice:String){
        
        let randomChoice: Int = Int.random(in: 0...2)
        let choices:Array = ["rock", "paper", "scissors"]
        botChoice = choices[randomChoice]
        playerChoice = choice
        
        let winningConditions:[String : String]=[
            "scissors":"paper",
            "rock":"scissors",
            "paper":"rock"
        ]
        if choice == botChoice{
            message = "No one"
        }
        else if winningConditions[botChoice] == choice{
            message = "win"
        }else if winningConditions[choice] == botChoice{
            message = "lose"
        }
    }
    
    // Memory
    
    func ducksGenerateRandomly(){
        shuffledArray = DataController.ducks.shuffled()
    }
    
    func revealDuck(id:UUID){
        if let index = shuffledArray.firstIndex(where: { $0.id == id }) {
            shuffledArray[index].isRevealed = !shuffledArray[index].isRevealed
        }
    }
}

