//
//  LectureCardView.swift
//  Manos que Hablan
//
//  Created by Alfonso Patron on 24/01/24.
//

import SwiftUI

struct LectureCardView: View {
    
    var geometry: GeometryProxy
    @State var isFavorite : Bool = false
    var category : LectureModelCard
    
    var body: some View {
            
            
                  
            VStack(alignment: .leading, spacing: 20) {
                                          
                                      
                                      HStack {
                                          Text(category.name)
                                                  .font(.largeTitle)
                                                  .bold()
                                                  .minimumScaleFactor(0.3)
                                                  .lineLimit(3)
                                                  .frame(maxWidth: geometry.size.width * 0.7)
                                          
                                          Spacer()
                                          
                                          Image(systemName: "heart")
                                              .resizable()
                                              .scaledToFit()
                                              .frame(width: 30)
                                      }
                                      
                                          
                                   
                                          
                                          HStack{
                                              
                                              Text(category.tags[0])
                                                  .foregroundStyle(.white)
                                                  .bold()
                                                  .padding(.vertical, 7)
                                                  .padding(.horizontal)
                                                  .background(.black)
                                                  .clipShape(RoundedRectangle(cornerRadius: 50))
                                              
                                              
                                              Text(category.tags[1])
                                                  .foregroundStyle(.white)
                                                  .bold()
                                                  .padding(.vertical, 7)
                                                  .padding(.horizontal)
                                                  .background(.black)
                                                  .clipShape(RoundedRectangle(cornerRadius: 50))
                                          }
                                          .padding(.vertical, 30)

                                          
                                      }
                                      .padding(.top, 25)
                                      .padding(.horizontal)
                                      .frame(height: 200)
                                      .background(category.colorCard)
                                  .clipShape(RoundedRectangle(cornerRadius: 20))
            
            
       
        
         
    }
}

#Preview {
    GeometryReader { geo in
        LectureCardView(geometry: geo, category: lectureModelCardInfo[1])

        
    }
}
