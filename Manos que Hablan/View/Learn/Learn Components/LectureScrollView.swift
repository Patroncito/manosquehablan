//
//  LectureScrollView.swift
//  Manos que Hablan
//
//  Created by Alfonso Patron on 24/01/24.
//

import SwiftUI

struct LectureScrollView : View {
    
    var lecture = lectureModelCardInfo

    var body: some View {
        
        GeometryReader { geometry in
            ScrollView(.vertical, showsIndicators: false){
                LazyVStack{
                    VStack(spacing: 20){
                        ForEach(lecture){ item in
                          
                            LectureCardView(geometry: geometry, category: item)
                        }
                       

                    }
                }
            }
        }
        .padding(.top, 20)
    }
}


#Preview {
    LectureScrollView()
}

