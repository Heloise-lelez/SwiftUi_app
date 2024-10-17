//
//  MenuAppView.swift
//  Cours_SwiftUI_2
//
//  Created by Héloïse Le Lez on 15/10/2024.
//

import SwiftUI

struct MenuAppsView: View {
    var body: some View {
        NavigationStack{
            ZStack{
                Rectangle()
                    .fill(AppParameters.lightPrimaryColor)
                    .ignoresSafeArea()
                VStack{
                    Text("Menu des applications")
                        .padding()
                        .font(.system(size: 30))
                    ScrollView {
                        ForEach(availableApps.allCases, id: \.self) {
                            nameApp in
                            NavigationLink(destination: nameApp.appView){
                                ZStack{
                                    RoundedRectangle(cornerSize: CGSize(width: 10, height: 10))
                                        .fill(("\(nameApp.imageName)" == "rps" ? AppParameters.secondaryBackgroundColor : AppParameters.backgroundColor))
                                        .padding(.vertical, 10)
                                        .padding(.horizontal, 10)
                                        .shadow(radius: 5)
                                        .frame(width: 320, height: 230)
                                    VStack{
                                        Text("\(nameApp.rawValue)")
                                            .font(.system(size: 20))
                                            .foregroundStyle(.black)
                                        ZStack{
                                            Circle()
                                                .fill("\(nameApp.imageName)" == "rps" ? AppParameters.secondaryBackgroundColor : AppParameters.backgroundColor)
                                                .frame(width: 150)
                                            Image("\(nameApp.imageName)")
                                                .resizable()
                                                .aspectRatio(contentMode: .fit)
                                                .frame(width: 200, height: 140)
                                                .cornerRadius(10)
                                        }
                                    }
                                }.frame(height: 250)
                            }
                        }
                    }
                }
            }
        }
    }
}
#Preview {
    MenuAppsView()
}
