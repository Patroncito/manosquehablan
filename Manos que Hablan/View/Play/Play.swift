//
//  play.swift
//  Manos que Hablan
//
//  Created by Fermin Alfonso Bañuelos Patrón on 27/02/23.
//

import SwiftUI

struct Play : View {

    @Environment(\.presentationMode) var presentationMode

    
    var body: some View {
        NavigationView{
            ZStack{
                Image("fondo1")
                    .resizable()
                    .ignoresSafeArea(.all)
                
                
                
                
                ZStack(alignment: .top){
                    
                    
                    VStack(alignment: .leading) {

                        
                        ScrollView(.vertical){
                            
                            VStack{
                                VStack {
                                    ForEach(allQuizname.indices, id: \.self) { index in
                                        let QuizName = allQuizname[index]
                                        NavigationLink(destination: QuizGameViews[index]) {
                                            
                                            infoPlayView(nameCategory: QuizName, coloCard: ColoresCategorias[index], iconoDeCategoria: iconCategories[index])
                                            
                                        }
                                    }
                                }
                                
                                
                            }
                            
                        }
                        
                    }
                    
                    
                    // boton flotante para cerrar el modal con la vista Play()
                    HStack(alignment: .center){
                        Spacer()
                        Button(action: {
                                presentationMode.wrappedValue.dismiss()

                                   }) {
                                       ZStack{
                                           
                                             Image(systemName: "xmark")
                                                 .font(.title)
                                                 .foregroundColor(.white)
                                                 .frame(width: 50, height: 50)
                                                 .background(Color.red)
                                                 .clipShape(Circle())
                                                 .shadow(color: Color.black, radius: 12, x: 0, y: 0)
                                       }
                                      
                                   }
                                   .padding(.top, 20)
                                   .padding(.trailing, 20)
                        
                        //
                    }

            
                }
                

                
            }
            .navigationBarHidden(true)

            //
            
            
            
            //
        }
    }
}


struct infoPlayView : View {
    
    let nameCategory : String
    let coloCard : Color
    let iconoDeCategoria : String
    
    var body: some View {
        
        ZStack{
            
            Rectangle()
                .fill(LinearGradient(
                    gradient: Gradient(stops: [
                        .init(color: .black, location: 0.0),
                        .init(color: .clear, location: 0.5),
                    ]),
                    startPoint: .leading,
                    endPoint: .trailing
                ))
            
            HStack{
                VStack(alignment: .leading){
                    Text("Empezar Quiz").font(.title3).foregroundColor(.white).bold()
                    Text(nameCategory).font(.title2).foregroundColor(.white).bold().padding(EdgeInsets(top: 5, leading: 0, bottom: 10, trailing: 0))

                }
                .padding(.init(top: 20, leading: 10, bottom: 20, trailing: 10))
                Spacer()
                
                
                Text(iconoDeCategoria).shadow(radius: 10).font(Font.system(size: 50)).frame(width: 85, height: 85)
                    .overlay(Circle().stroke(Color.purple, lineWidth: 3)).padding(.init(top: 0, leading: 10, bottom: 0, trailing: 20))
                
   
            }
            
        }
        
        .background(coloCard)
        .cornerRadius(10)
        .padding(.horizontal, 10)
        .padding(.top, 10)
        .padding(.bottom, -5)
    }
    
}


