//
//  MemoryCardView.swift
//  Cours_SwiftUI_2
//
//  Created by Héloïse Le Lez on 17/10/2024.
//

import SwiftUI

struct MemoryCardView: View {
    @StateObject var viewModel = MainViewModel()
    var duck:Duck
    var body: some View {
        ZStack{
            RoundedRectangle(cornerSize: CGSize(width: 10, height: 10))
                .fill(AppParameters.primaryColor)
                .frame(width: 120, height:120)
            if duck.isRevealed {
                Image(duck.image).resizable().frame(width: 100,height: 100)
            }else{
                Image(systemName: "questionmark")
            }
        }
    }
}
