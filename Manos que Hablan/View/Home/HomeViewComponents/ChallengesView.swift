//
//  ChallengesView.swift
//  Manos que Hablan
//
//  Created by Alfonso Patron on 23/01/24.
//

import SwiftUI

struct ChallengesView: View {
    var body: some View {
        
        
           VStack(alignment: .leading){
               
               
               HStack{
                   Text("Retos Totales")
                       .font(.title2)
                       .foregroundStyle(.white)
                       .bold()
                   
                   Spacer()
                   
                   Button(action: {
                       print("Button Challenges")
                   }, label: {
                       
                       Image(systemName: "arrowshape.right.circle.fill")
                           .resizable()
                           .aspectRatio(contentMode: .fit)
                           .frame(width: 22)
                           .foregroundStyle(.white.opacity(0.8))
                       
                   })
               }
          
               
               
               GeometryReader { geometry in
                   
                   HStack(spacing: 20){
                           
                       //First Card

                       HStack(spacing: 10){
                               Spacer()
                               Text("⚡️")
                                   .font(.system(size: 40))
                               
                               VStack(alignment: .leading){
                                   Text("Cumplidos")
                                       .font(.system(size: 12))
                                       .foregroundStyle(.white.opacity(0.8))

                                   Text("234")
                                       .font(.title)
                                       .foregroundStyle(.white)
                                       .bold()
                               }
                               Spacer()

                               
                           }
                           .frame(height: geometry.size.height)
                           .background(LinearGradient(colors: [Color(.baseHaiti), Color(.baseHaiti)], startPoint: .leading, endPoint: .trailing))
                           .clipShape(RoundedRectangle(cornerRadius: 20))
                         
                           // 2nd Card
                       HStack(spacing: 10){
                           Spacer()
                               Text("🎯")
                                   .font(.system(size: 40))
                               
                               VStack(alignment: .leading){
                                   Text("Perdidos")
                                       .font(.system(size: 12))
                                       .foregroundStyle(.white.opacity(0.8))

                                   Text("503")
                                       .font(.title)
                                       .foregroundStyle(.white)
                                       .bold()
                               }
                           Spacer()

                               
                           }
                           .frame(height: geometry.size.height)
                           .background(LinearGradient(colors: [Color(.baseHaiti), Color(.baseHaiti)], startPoint: .leading, endPoint: .trailing))
                           .clipShape(RoundedRectangle(cornerRadius: 20))
                               
                   }
                   
               }
               
             
               
               
           }
           .padding(.horizontal)

        
    }
    
}

#Preview {
    ChallengesView()
}
