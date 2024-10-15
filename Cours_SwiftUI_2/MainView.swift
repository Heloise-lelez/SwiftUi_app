//
//  MainView.swift
//  Cours_SwiftUI_2
//
//  Created by Héloïse Le Lez on 15/10/2024.
//

import SwiftUI

struct MainView: View {
    @State private var username: String = ""
    @State private var password: String = ""
    
    @StateObject var viewModel = MainViewModel()
    
    
    var body: some View {
        NavigationStack{
            if !viewModel.isValid{
                
                ZStack{
                    
                    
                    RoundedRectangle(cornerSize: CGSize(width: 20, height: 20)).fill(AppParameters.backgroundColor).frame(width: 360, height: 360).shadow(radius: /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/)
                    VStack{
                        Text("Login").font(.system(size: 36))
                        TextField("Username", text: $username).padding(.vertical, 10).padding(.horizontal, 30).textFieldStyle(RoundedBorderTextFieldStyle()).frame(width: 350)
                        TextField("Password", text: $password).padding(.vertical, 10).padding(.horizontal, 30).textFieldStyle(RoundedBorderTextFieldStyle()).frame(width: 350)
                        
                        
                        Button{
                            viewModel.checkConnection(login: username, password: password)
                        }label: {
                            ZStack{
                                RoundedRectangle(cornerSize: CGSize(width: 10, height: 10)).fill(.white).frame(width: 130, height: 40)
                                Text("Login").foregroundStyle(AppParameters.textColor)
                            }
                         
                        }
                    }
                    
                }
            }
            else{
                NavigationLink(destination: MenuAppsView()){
                    ZStack{
                        RoundedRectangle(cornerSize: CGSize(width: 10, height: 10)).fill(.white).frame(width: 130, height: 40)
                        Text("Apps").foregroundStyle(AppParameters.textColor)
                    }
                    
                }
            }
        }
    }
    
}

#Preview {
    MainView()
}
