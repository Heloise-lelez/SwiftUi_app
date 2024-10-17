//
//  MemoryView.swift
//  Cours_SwiftUI_2
//
//  Created by Héloïse Le Lez on 17/10/2024.
//

import SwiftUI

struct MemoryView: View {
    
    @StateObject var viewModel = MainViewModel()

    let columns = Array(repeating: GridItem(.fixed(120), spacing: 8, alignment: .center), count: 3)
    
    
    var body: some View {
        ZStack{
            Color(AppParameters.backgroundColor)
                .ignoresSafeArea()
            VStack{
                Text("Memory")
                    .font(.system(size: 32))
                    .fontWeight(.light)
                    .padding(.top, 30)
                LazyVGrid(columns: columns) {
                    ForEach(viewModel.shuffledArray, id: \.self){
                        duck in
                        ZStack{
                            MemoryCardView(duck:duck)
                                .onTapGesture {
                                viewModel.revealDuck(id:duck.id)
                            }
                        }
                    }
                }.padding(.bottom, 10)
            }
        }.onAppear() {
            viewModel.ducksGenerateRandomly()
            
        }
    }
}

#Preview {
    MemoryView()
}
