//
//  RPSChoiceView.swift
//  Cours_SwiftUI_2
//
//  Created by Héloïse Le Lez on 16/10/2024.
//

import SwiftUI

struct RPSChoiceView: View {
    
    var choice: String
    
    var body: some View {
        
        Image("\(choice)-removebg") .resizable()
            .aspectRatio(contentMode: .fit)
            .frame(width: 100, height: 150).cornerRadius(100).shadow(radius: 10)
    }
}

#Preview {
    RPSChoiceView(choice:"paper")
}
