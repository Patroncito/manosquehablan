//
//  CategoriesScrollView.swift
//  Manos que Hablan
//
//  Created by Alfonso Patron on 24/01/24.
//

import SwiftUI

struct CategoriesScrollView : View {
    var category = categoryModelCardInfo
    
    var body: some View {
        GeometryReader { geometry in
            ScrollView(.vertical, showsIndicators: false){
                VStack(spacing: 20){
                    ForEach(category){ item in
                      
                        LearnCardView(geometry: geometry, category: item)
                    }
                   

                }
            }
        }
        .padding(.top, 20)
    }
    
}


#Preview {
    CategoriesScrollView()
}
