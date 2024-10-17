//
//  AppParameters.swift
//  Cours_SwiftUI_2
//
//  Created by Héloïse Le Lez on 15/10/2024.
//

import SwiftUI

class AppParameters{
    //Blue theme
    static let backgroundColor = Color (red: 0.7, green: 0.8, blue: 0.9)
    static let primaryColor = Color (red: 58/255, green: 72/255, blue: 86/255)
    static let darkPrimaryColor = Color (red: 32/255, green: 40/255, blue: 48/255)
    static let lightPrimaryColor = Color (red: 0.95, green: 0.98, blue: 1)
    
    //Orange Theme
    static let secondaryBackgroundColor = Color (red: 239/255, green: 194/255, blue: 165/255)
    static let secondaryColor = Color (red: 221/255, green: 115/255, blue: 63/255)
    
}
enum availableApps:String{
    static let  allCases:[availableApps] = [.rockPaperScissors, .calculator, .memory]
    
    case rockPaperScissors = "Rock Paper Scissors"
    case calculator = "Calculator"
    case memory = "Memory"
    
    var title:String{
        switch self{
        case .rockPaperScissors : return "Rock Paper Scissors"
        case .calculator : return "Calculator"
        case .memory : return "Memory"
            
        }
    }
    
    var imageName:String{
        switch self{
        case .rockPaperScissors : return "rps"
        case .calculator : return "calculator"
        case .memory : return "duck"
        }
    }
    
    @ViewBuilder var appView: some View{
        switch self{
        case .rockPaperScissors : RockPaperScissorsView()
        case .calculator : CalculatorView()
        case .memory : MemoryView()
            
        }
    }
}

