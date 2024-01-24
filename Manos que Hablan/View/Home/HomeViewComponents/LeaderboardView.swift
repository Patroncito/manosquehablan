//
//  LeaderboardView.swift
//  Manos que Hablan
//
//  Created by Alfonso Patron on 23/01/24.
//

import SwiftUI

struct LeaderboardView: View {
    var body: some View {

        VStack(alignment: .center) {
            
            HStack{
                Image("star")
                    .resizable()
                    .scaledToFit()
                    .frame(height: 15)
                    .shadow(color: .yellow.opacity(0.8), radius: 5)
                    .opacity(0.8)
                
                Image("star")
                    .resizable()
                    .scaledToFit()
                    .frame(height: 20)
                    .shadow(color: .yellow.opacity(0.8), radius: 5)
                
                Image("star")
                    .resizable()
                    .scaledToFit()
                    .frame(height: 15)
                    .shadow(color: .yellow.opacity(0.8), radius: 5)
                    .opacity(0.8)


            }
            
            
            Text("Tabla de Clasificación")
                .foregroundStyle(.white)
                .font(.headline)
                .bold()
                .padding(.bottom, 4)
            
            HStack{
                
                Spacer()
                
                HStack{
                    
                        Text("🌎")
                            .font(.system(size: 35))
                    
                    VStack(alignment: .leading){
                        Text("Global")
                            .font(.system(size: 12))
                            .foregroundStyle(.white.opacity(0.8))
                        Text("732,491")
                            .bold()
                    }
                    .foregroundStyle(.white)
                    
                }
                
                Spacer()
                
                HStack{
                    Text("🇲🇽")
                        .font(.system(size: 35))
                    
                    VStack(alignment: .leading){
                        Text("México")
                            .font(.system(size: 12))
                            .foregroundStyle(.white.opacity(0.8))

                        Text("392,142")
                            .foregroundStyle(.white)
                            .bold()
                    }
                    
                }
                
                Spacer()

            }
        }
        .frame(height: 130)
        .padding(.bottom)
        .background(LinearGradient(colors: [Color(.baseHaiti), Color(.baseHaiti)], startPoint: .leading, endPoint: .trailing))
        .clipShape(RoundedRectangle(cornerRadius: 20))
        .padding(.horizontal)
  


    }
}

#Preview {
    LeaderboardView()
}


