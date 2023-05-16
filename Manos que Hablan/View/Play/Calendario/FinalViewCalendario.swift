//
//  FinalViewCalendario.swift
//  Manos que Hablan
//
//  Created by Fermin Alfonso Bañuelos Patrón on 11/05/23.
//


import SwiftUI

struct FinalViewCalendario: View {
    
    var score : Int
    var scoreTotal : Int
    var body: some View {
        
        VStack{
               
                    Image("trophy")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 170, height: 170)
                        .padding(.vertical, 10)
                        .padding(.horizontal, 10)
            
                VStack{
                    Text("📅").font(.system(size: 70)).padding(.bottom, 5)
                    Text("Has Llegado Al Final").padding(.bottom, 10).font(.title).bold()
                    Text("Puntuación: ⭐️\(score) | ⭐️\(scoreTotal)").font(.title2).bold()
                .onAppear(){
                    SaveScore(quiz: "quizCalendario", score: self.score)

                }
            
                    
                    
                }.padding(.horizontal,10)
                .padding(.bottom, 15)
        }
        .padding(.top, 15)
        .background(
                Color.white
                .opacity(0.8)
        
        )
        .cornerRadius(20)
        .shadow(color: Color.black, radius: 15, x: 0, y: 10)
        .navigationBarHidden(true)


        
 
    }
}

