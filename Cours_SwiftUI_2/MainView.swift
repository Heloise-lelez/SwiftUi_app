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
    
    @State private var isClicked = false
    
    @State private var alert = false
    
    
    @StateObject var viewModel = MainViewModel()
       
    var body: some View {
        
        NavigationStack{
            ZStack{
                Rectangle().fill(AppParameters.lightPrimaryColor).ignoresSafeArea()
                if !viewModel.isValid{
                    VStack{
                        Image("Qwacky")
                        ZStack{
                            RoundedRectangle(cornerSize: CGSize(width: 20, height: 20)).fill(AppParameters.backgroundColor).frame(width: 370, height: 370).shadow(radius: /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/)
                            VStack{
                                Text("Login").font(.system(size: 36))
                                TextField("Username", text: $username).padding(.vertical, 10).padding(.horizontal, 30).textFieldStyle(RoundedBorderTextFieldStyle()).frame(width: 390)
                                
                                
                                ZStack(alignment: .trailing, content: {
                                    
                                    Group{
                                        if !isClicked {
                                            SecureField("Password", text: $password).padding(.vertical, 10).padding(.horizontal, 30).textFieldStyle(RoundedBorderTextFieldStyle()).frame(width: 390)
                                        } else {
                                            TextField("Password", text: $password).padding(.vertical, 10).padding(.horizontal, 30).textFieldStyle(RoundedBorderTextFieldStyle()).frame(width: 390)
                                        }
                                    }
                                    Button{
                                        isClicked.toggle()
                                    }label: {
                                        Image(systemName: isClicked ? "eye" : "eye.slash")
                                            .foregroundColor(isClicked ? AppParameters.primaryColor : .gray)
                                            .padding(.vertical, 5)
                                            .padding(.trailing, 40)
                                    }
                                })
                                Button{
                                    viewModel.checkConnection(login: username, password: password)
                                    if !viewModel.isValid{
                                        alert = true
                                    }
                                }label: {
                                    ZStack{
                                        RoundedRectangle(cornerSize: CGSize(width: 10, height: 10)).fill(.white).frame(width: 130, height: 40)
                                        Text("Login").foregroundStyle(AppParameters.primaryColor)
                                    }
                                    
                                }
                                
                            }
                            
                        }.alert(isPresented: $alert){
                            Alert(title: Text("Alert"), message: Text("Username or password incorrect :/"))
                        }
                    }
                }
                else{
                    
                    NavigationStack {
                        VStack {
                            NavigationLink(destination: MenuAppsView()){
                                VStack{
                                    Image("QwackyWater").padding(.bottom, -8)
                                    ZStack{
                                        RoundedRectangle(cornerSize: CGSize(width: 10, height: 10)).fill(AppParameters.backgroundColor).frame(width: 130, height: 40)
                                        Text("Show Apps").foregroundStyle(AppParameters.primaryColor)
                                    }
                                }
                            }
                        }
                    }.toolbar{
                        Button{
                            viewModel.isValid = false
                        }label: {
                            Text("Disconnect")
                        }
                    }
                }
            }}
    }
}

#Preview {
    MainView()
}
