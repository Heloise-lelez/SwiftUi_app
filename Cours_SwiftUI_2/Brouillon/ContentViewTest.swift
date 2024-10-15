//
//  ContentView.swift
//  Cours_SwiftUI_2
//
//  Created by Héloïse Le Lez on 15/10/2024.
//

import SwiftUI

struct ContentViewTest: View {
    
    @State var appui1:Int = 0
    @State var appui2:Int = 0
    @State var appui3:Int = 0
    @State var appui4:Int = 0
    var body: some View {
        
        
        VStack {
            
            RoundedRectangle(cornerSize: CGSize(width: 10, height: 10)).stroke(style: /*@START_MENU_TOKEN@*/StrokeStyle()/*@END_MENU_TOKEN@*/)
                .frame(width: 120, height: 40)
            Circle().frame(width: 120, height: 40)
                
            Button{
                appui1 += 1
            }label:{
                ZStack{
                    Circle().fill(Color(red: 1, green: 1, blue: 1/255)).frame(width: 40,height: 40)
                    Text("\(appui1)")
                }
            }
            HStack {
                Button{
                    appui2 += 1
                }label:{
                    ZStack{
                        Circle().fill(Color(red: 1, green: 1, blue: 1/255)).frame(width: 40,height: 40)
                        Text("\(appui2)")
                    }
                }
                Button{
                    appui3 += 1
                }label:{
                    ZStack{
                        Circle().fill(Color(red: 1, green: 1, blue: 1/255)).frame(width: 40,height: 40)
                        Text("\(appui3)")
                    }
                }
            }
            Button{
                appui4 += 1
            }label:{
                ZStack{
                    Circle().fill(Color(red: 1, green: 1, blue: 1/255)).frame(width: 40,height: 40)
                    Text("\(appui4)")
                }
            }
        }
        .padding()
    }
}

#Preview {
    ContentViewTest()
}
