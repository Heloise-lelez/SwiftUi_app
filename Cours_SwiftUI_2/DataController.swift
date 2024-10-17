//
//  DataController.swift
//  Cours_SwiftUI_2
//
//  Created by Héloïse Le Lez on 15/10/2024.
//

import Foundation

class DataController{
    static let registredUsers: [String: String] = [
        "Riri" : "1234",
        "Fifi":"1234",
        "Loulou":"1234"
    ]
    
    
    func checkDico(dico: [String:String]){
        for element in dico{
            print("\(element.key) utilise le mot de passe \(element.value)")
        }
    }
    
    static let ducks: [Duck] = [
        Duck(name: "Ruddy Shelduck", image: "RuddyShelduck", isRevealed: false),
        Duck(name: "Welsh Harlequin", image: "WelshHarlequin", isRevealed: false),
        Duck(name: "Mandarin Duck", image: "MandarinDuck", isRevealed: false),
        Duck(name: "Paradise Shelduck", image: "ParadiseShelduck", isRevealed: false),
        Duck(name: "Mallard", image: "Mallard", isRevealed: false),
        Duck(name: "Wood Duck", image: "WoodDuck", isRevealed: false),
        Duck(name: "Ruddy Shelduck", image: "RuddyShelduck", isRevealed: false),
        Duck(name: "Welsh Harlequin", image: "WelshHarlequin", isRevealed: false),
        Duck(name: "Mandarin Duck", image: "MandarinDuck", isRevealed: false),
        Duck(name: "Paradise Shelduck", image: "ParadiseShelduck", isRevealed: false),
        Duck(name: "Mallard", image: "Mallard", isRevealed: false),
        Duck(name: "Wood Duck", image: "WoodDuck", isRevealed: false)
    ]
    
}

struct Duck: Identifiable,Hashable {
    let id = UUID()
    let name: String
    let image: String
    var isRevealed: Bool
}
