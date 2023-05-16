//
//  QuizNumerosView.swift
//  Manos que Hablan
//
//  Created by Fermin Alfonso Bañuelos Patrón on 11/05/23.
//


import SwiftUI



//view for the quiz game
struct QuizNumerosView : View {
    

   @Environment(\.presentationMode) var presentationMode

   //number of question
   @State var i : Int = 0
   let suffleQuiz = myQuizSuffle(data: quizNumeros)

    
   //var for the score
   @State var score = 0
   @State private var showActionSheet = false
    
   var body: some View {
       VStack{
           VStack(spacing: 15){
                
               HStack(){
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
               Spacer()


               //if i < of questions --> play question
               if(self.i < suffleQuiz.count){
                    
                   
                   //image of the question
                   Image(suffleQuiz[self.i].img).resizable().aspectRatio(contentMode: .fill
                   ).frame(width: 200, height: 230, alignment: .center).cornerRadius(20).padding(.bottom, 30)
                       .shadow(color: Color.white, radius: 15, x: 0, y:0)
                
                   VStack {
                       Text("¿Que significa esta seña?").font(.title3).padding(.vertical,15).bold()
                       VStack{
                           HStack{
                               //answer 0
                               Button(action:{
                                   self.showActionSheet = true
                                   self.buttonAction(n: 0)
                               },label: {
                                   Text(suffleQuiz[self.i].answer[0])
                                       .foregroundColor(.black)
                                       .padding()
                                       .frame(maxWidth: .infinity, alignment: .center)
                                       .background(
                                           Color.green
                                               .cornerRadius(8)
                                           
                                       )
                                       .overlay(
                                           RoundedRectangle(cornerRadius: 8)
                                               .stroke(Color.black, lineWidth: 1)
                                       )
                               })
                               .actionSheet(isPresented: $showActionSheet) {
                                   ActionSheet(
                                       title: Text("Puntuación"),
                                       message: Text("Puntuación : \(self.score) / \(suffleQuiz.count)"),
                                       buttons: [
                                           .default(Text("Continuar"))
                                       ]
                                   )
                               }
                               
                               
                               //answer 1
                               Button(action:{
                                   self.buttonAction(n: 1)
                                   self.showActionSheet = true
                               },label: {
                                   Text(suffleQuiz[self.i].answer[1])
                                       .foregroundColor(.black)
                                       .padding()
                                       .frame(maxWidth: .infinity, alignment: .center)
                                       .background(
                                           Color.yellow
                                               .cornerRadius(8)
                                       )
                                       .overlay(
                                           RoundedRectangle(cornerRadius: 8)
                                               .stroke(Color.black, lineWidth: 1)
                                       )
                               })
                           }.padding(.bottom, 10)
                           
                           HStack{
                               //answer 2
                               Button(action:{
                                   self.buttonAction(n: 2)
                                   self.showActionSheet = true
                               },label: {
                                   Text(suffleQuiz[self.i].answer[2])
                                       .foregroundColor(.black)
                                       .padding()
                                       .frame(maxWidth: .infinity, alignment: .center)
                                       .background(
                                           Color.orange
                                               .cornerRadius(8)
                                       )
                                   
                                       .overlay(
                                           RoundedRectangle(cornerRadius: 8)
                                               .stroke(Color.black, lineWidth: 1)
                                       )
                               })

                                
                               //answer 3
                               Button(action:{
                                   self.buttonAction(n: 3)
                                   self.showActionSheet = true
                               },label: {
                                   Text(suffleQuiz[self.i].answer[3])
                                       .foregroundColor(.black)
                                       .padding()
                                       .frame(maxWidth: .infinity, alignment: .center)
                                       .background(
                                           Color.cyan
                                               .cornerRadius(8)
                                       )
                                   
                                       .overlay(
                                           RoundedRectangle(cornerRadius: 8)
                                               .stroke(Color.black, lineWidth: 1)
                                       )
                               })
                           }
                       }.padding(.horizontal, 20)
                           .padding(.vertical, 20)

                   }.background(.white)
                       .cornerRadius(20)
                       .padding(.horizontal, 20)
                       .shadow(color: Color.black, radius: 15, x: 0, y: 10)

               }
               
               else {
                   FinalViewNumeros(score: score, scoreTotal: suffleQuiz.count)
                  
                   
               }
               Spacer()

           }


       }
       .background( Image("fondo1")
           .resizable()
           .ignoresSafeArea(.all)
           .aspectRatio(contentMode: .fill)

       )
       .navigationBarHidden(true)
   }
    
    
   //action of the buttons
   //n = answer [0,1,2,3]
   func buttonAction( n : Int){
       //if answer is correct increment score
       if(suffleQuiz[self.i].correct == n){
           self.score = self.score + 1
       }
       //GO TO NEXT QUESTION
       self.i = self.i + 1
        
   }
    
    
}

