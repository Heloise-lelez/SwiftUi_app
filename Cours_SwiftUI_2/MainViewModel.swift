//
//  MainViewModel.swift
//  Cours_SwiftUI_2
//
//  Created by Héloïse Le Lez on 15/10/2024.
//

import Foundation


class MainViewModel: ObservableObject{
    
    @Published var isValid = false
    
    func checkConnection(login:String, password:String){
        if let realPassword = DataController.registredUsers[login]{
            print(isValid)
            
            if realPassword == password {
                isValid = true
            }else{
                isValid = false
            }
        }else{
            isValid = false
        }
    }
    
}
