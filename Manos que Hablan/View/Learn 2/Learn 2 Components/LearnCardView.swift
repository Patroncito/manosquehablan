//
//  LearnCardView.swift
//  Manos que Hablan
//
//  Created by Alfonso Patron on 23/01/24.
//

import SwiftUI

struct LearnCardView: View {
    
    
    var geometry: GeometryProxy
    @State var isFavorite : Bool = false
    var category : CategoryModelCard

    var body: some View {
        
              ZStack(alignment: .bottomTrailing) {
                  
                              VStack(alignment: .leading, spacing: 20) {
                                      
                                  Text(category.name)
                                          .padding(.trailing, geometry.size.width/4)
                                          .font(.largeTitle)
                                          .bold()
                                          .minimumScaleFactor(0.5)
                                  
                                      
                                          
                                  Text(category.decription)
                                      
                                          .padding(.trailing, geometry.size.width/3)
                                          .fontWeight(.light)
                                          .font(.callout)
                                          .lineLimit(4)
                                          .multilineTextAlignment(.leading)
                                          
                                      
                                      HStack{
                                          
                                          Text(category.tags[0])
                                              .foregroundStyle(.white)
                                              .padding(.vertical, 7)
                                              .padding(.horizontal)
                                              .background(.black)
                                              .clipShape(RoundedRectangle(cornerRadius: 50))
                                          
                                          
                                          Text(category.tags[1])
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
                                  .background(category.colorCard)
                              .clipShape(RoundedRectangle(cornerRadius: 20))
                              
                              
                        Text(category.coverLetter)
                                  .font(.system(size: 300))
                                  .foregroundStyle(.black.opacity(0.1))
                                  .minimumScaleFactor(0.5)
              }
    }
    
}

#Preview {
    GeometryReader { geo in
        LearnCardView(geometry: geo, category: categoryModelCardInfo[1])

    }
}



