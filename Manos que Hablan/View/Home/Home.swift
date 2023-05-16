//
//  Home.swift
//  Manos que Hablan
//
//  Created by Fermin Alfonso Bañuelos Patrón on 27/02/23.
//

import SwiftUI
import AVKit

struct Home: View {
    
    
    var body: some View {
                ZStack{
                    Image("fondo1")
                        .resizable()
                        .ignoresSafeArea(.all)
                    VStack(alignment: .leading){
                        ScrollView(.horizontal) {
                       
                            HStack(alignment: .center){
                                
                                CardViewModal(title: "Jugar", imageName: "play.fill", colorBackground: Color.purple, width: 150, height: 150, fontSize: 60, destination: AnyView(Play()))
                                
                                CardViewModal(title: "Aprender", imageName: "book.fill", colorBackground: Color.red, width: 140, height: 140, fontSize: 40, destination: AnyView(listCategories()))
                                
                                CardViewModal(title: "Acerca de", imageName: "person.fill", colorBackground: Color.blue, width: 130, height: 130, fontSize: 30, destination: AnyView(AboutUs()))
                                
                                
                                
                            }
                            .padding(.top, 20)
                            .padding(.horizontal, 10)
                        }
                        
                        VStack(alignment: .leading){    
                           
                            
                            
                            Text("Ultimas Puntuaciones")
                                .font(.title)
                                .bold()
                                .padding(.leading, 10)
                                .padding(.top, 10)
                            
                            
                            ScrollView(.vertical){
                                
                                    VStack(alignment: .leading){
                                        HStack{
                                            lastScores(iconCategory: "✏️", tittle: "Abecedario", color: Color.green, puntuacionMaxima: quizAbecedario.count, nameOfQuizz: "quizAbecedario")
                                            
                                            lastScores(iconCategory: "👋🏼", tittle: "Adjetivos", color: Color.yellow, puntuacionMaxima: quizAdjetivos.count, nameOfQuizz: "quizAdjetivos")
                                            
                                        }
                                        
                                        HStack{
                                            lastScores(iconCategory: "🍕", tittle: "Alimentos", color: Color.pink, puntuacionMaxima: quizAlimentos.count, nameOfQuizz: "quizAlimentos")
                                            
                                            lastScores(iconCategory: "🐶", tittle: "Animales", color: Color.cyan, puntuacionMaxima: quizAnimales.count, nameOfQuizz: "quizAnimales")
                                        }
                                        
                                        HStack{
                                            lastScores(iconCategory: "📆", tittle: "Calendario", color: Color.orange, puntuacionMaxima: quizCalendario.count, nameOfQuizz: "quizCalendario")
                                            
                                            lastScores(iconCategory: "🏠", tittle: "Casa", color: Color.green, puntuacionMaxima: quizCasa.count, nameOfQuizz: "quizCasa")
                                        }
                                        
                                        HStack{
                                            lastScores(iconCategory: "🎨", tittle: "Colores", color: Color.yellow, puntuacionMaxima: quizColores.count, nameOfQuizz: "quizColores")
                                            
                                            lastScores(iconCategory: "🦶🏻", tittle: "Cuerpo Humano", color: Color.pink, puntuacionMaxima: quizCuerpoHumano.count, nameOfQuizz: "quizCuerpoHumano")
                                        }
                                        
                                        HStack{
                                            lastScores(iconCategory: "🍏", tittle: "Frutas y Verduras", color: Color.cyan, puntuacionMaxima: quizFrutasyVerduras.count, nameOfQuizz: "quizFrutasyVerduras")
                                            
                                            lastScores(iconCategory: "💯", tittle: "Numeros", color: Color.orange, puntuacionMaxima: quizNumeros.count, nameOfQuizz: "quizNumeros")
                                        }
                                        HStack(){
                                            lastScores(iconCategory: "🇲🇽", tittle: "Republica Mexicana", color: Color.green, puntuacionMaxima: quizRepublicaMexicana.count, nameOfQuizz: "quizRepublicaMexicana")
                                        }
                                    }
                                
                                
                            }
                         
                        }

                    }

                    
                }
                .navigationBarHidden(true)


    }
}



struct CardView : View {
    
    let title: String
    let imageName: String
    let destination: AnyView
    let color : Color
    let width : CGFloat
    let height : CGFloat
    let fontSize : CGFloat
    
    
    var body: some View {
        
            ZStack{
                
                VStack {
                    Image(systemName: imageName)
                    
                        .font(.system(size: fontSize))
                        .foregroundColor(.white)
                    
                    Text(title)
                        .font(.headline)
                        .foregroundColor(.white)
                        .padding()
                }
                .frame(width: width, height: height)
                .background(color)
                .cornerRadius(10)
                

            }
            

    
        .padding(.leading, 10)
    }
        
        
    }
    

struct CardViewModal : View {
    
    @State private var showModal = false
    
    let title: String
    let imageName: String
    let colorBackground : Color
    let width : CGFloat
    let height : CGFloat
    let fontSize : CGFloat
    let destination: AnyView


    
    var body: some View {
        
        
        VStack {
             Button(action: {
                 showModal = true
             }) {
                 ZStack {
                     VStack {
                         Image(systemName: imageName    )
                             .font(.system(size: fontSize))
                             .foregroundColor(.white)
                         
                         Text(title)
                             .font(.headline)
                             .foregroundColor(.white)
                             .padding()
                     }
                     .frame(width: width, height: height)
                     .background(colorBackground)
                     .cornerRadius(10)
                 }
             }
         }
         .fullScreenCover(isPresented: $showModal) {
            destination
         }
        
        
    }
}
struct lastScores : View {
 
    let iconCategory : String
    let tittle : String
    let color : Color
    @State var puntuacionFinal = 0
    let puntuacionMaxima : Int
    let nameOfQuizz : String
    
    
    
    var body: some View {
        
        
        VStack{
            VStack{
                Text(iconCategory).shadow(radius: 5).font(.title2).frame(width: 50, height: 50)
                    .overlay(Circle().stroke(Color.purple, lineWidth: 3)).padding(.top, 10)
            }
            
            VStack(alignment: .leading){
                Text(tittle)
                    .bold()
                    .font(.title3)
                    .foregroundColor(.white)
                    .padding(.bottom, 5)

                
            }
            
            Text("⛳️ : \(puntuacionFinal)⭐️ | \(puntuacionMaxima)⭐️")
                .onAppear(){
                    puntuacionFinal = LoadScore(quiz: nameOfQuizz)
                }
                
                .font(.system(size: 15))
                .foregroundColor(.white)
                .padding(.bottom, 4)
            
            Spacer()
  
        }.frame(width: 170, height: 130)
        
        .background(color)
        .cornerRadius(10)
        .padding(.horizontal, 10)
        .padding(.top, 10)
        .padding(.bottom, -5)
  
    }
}

struct AboutUs : View {

    @Environment(\.presentationMode) var presentationMode
    
    var body: some View {
        
        ZStack(){
            
            Image("fondo2")
                .resizable()
                .aspectRatio(contentMode: .fill)
                .edgesIgnoringSafeArea(.all
                )
            
            VStack() {
                
                
                Button(action: {
                    presentationMode.wrappedValue.dismiss()
                    
                }) {
                    
                    Image(systemName: "xmark")
                        .font(.title)
                        .foregroundColor(.white)
                        .frame(width: 50, height: 50)
                        .background(Color.red)
                        .clipShape(Circle())
                        .shadow(color: Color.black, radius: 12, x: 0, y: 0)
                    
                }
                .padding(.bottom, 20).padding(.top, 20).padding(.trailing, 10)
                VStack{
                    Text("Creado por")
                        .font(.subheadline).padding(.bottom, 5)
                    Text("Alfonso Patron")
                        .font(.title)
                        .padding(.bottom, 5)
                    Text("Angel Lopez ")
                        .font(.title)
                        .padding(.bottom, 5)
                    Text("Joel Verdugo")
                        .font(.title)
                        .padding(.bottom, 5)
                }.foregroundColor(.black).padding()
              
                
            }.background(Color.white).cornerRadius(12)
              
            

            
            
        }
       
        
        
    }
}
