//
//  Bouton.swift
//  Cours_SwiftUI_2
//
//  Created by Héloïse Le Lez on 16/10/2024.
//

import SwiftUI

struct Bouton: View {
    var text: String
    
    @StateObject var viewModel = MainViewModel()
    
    var body: some View {
        ZStack{
            Circle().fill(AppParameters.primaryColor).frame(height: 80)
            Text(text).font(.system(size: 37)).fontWeight(.light).foregroundStyle(AppParameters.backgroundColor)
        }.padding(5)
    }
}


#Preview {
    Bouton(text:"2")
}
