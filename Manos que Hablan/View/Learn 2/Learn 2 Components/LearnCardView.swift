//
//  LearnCardView.swift
//  Manos que Hablan
//
//  Created by Alfonso Patron on 23/01/24.
//

import SwiftUI

struct LearnCardView: View {
    
    var color : Color
    var geometry: GeometryProxy
    @State var isFavorite : Bool = false

    var body: some View {
        
        
    
                    VStack(alignment: .leading, spacing: 20) {
                        HStack(alignment: .top){
                            Text("Letras del Abecedario")
                                .padding(.trailing, geometry.size.width/4)
                                .font(.largeTitle)
                                .bold()
                                .minimumScaleFactor(0.5)

                        
                            Button(action: {
                                isFavorite.toggle()
                            }, label: {
                                
                                isFavorite == false ?
                                
                            Image(systemName: "heart")
                                .resizable()
                                .foregroundStyle(.black)
                                .scaledToFit()
                                .frame(width: 35)
                                .shadow(color: .white.opacity(0.3), radius: 10, x: 3, y: 5)
                                
                                :
                                
                                Image(systemName: "heart.fill")
                                    .resizable()
                                    .foregroundStyle(.red.opacity(0.8))
                                    .scaledToFit()
                                    .frame(width: 35)
                                    .shadow(color: .black.opacity(0.2), radius: 5, x: 2, y: 2)
                                    
                                
                                
                            })
                        }
                            
                                
                            Text("Aprende lo mas basico de todo lenguaje, el abecedario")
                            
                                .padding(.trailing, geometry.size.width/3)
                                .fontWeight(.light)
                                .font(.callout)
                                .multilineTextAlignment(.leading)
                                
                            Spacer()
                            
                            HStack{
                                
                                Text("Basico")
                                    .foregroundStyle(.white)
                                    .padding(.vertical, 7)
                                    .padding(.horizontal)
                                    .background(.black)
                                    .clipShape(RoundedRectangle(cornerRadius: 50))
                                
                                
                                Text("Facil")
                                    .foregroundStyle(.white)
                                    .padding(.vertical, 7)
                                    .padding(.horizontal)
                                    .background(.black)
                                    .clipShape(RoundedRectangle(cornerRadius: 50))
                            }
                            .padding(.vertical, 30)

                            
                        }
                        .padding(.top, 25)
                        .padding(.horizontal)
                        .frame(height: 350)
                        .background(color)
                    .clipShape(RoundedRectangle(cornerRadius: 20))
        
    }
    
}

#Preview {
    GeometryReader { geo in
        LearnCardView(color: Color(.thPink), geometry: geo)

    }
}



