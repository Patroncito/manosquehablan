//
//  CategoryCardView.swift
//  Manos que Hablan
//
//  Created by Alfonso Patron on 23/01/24.
//

import SwiftUI

struct CategoryCardView: View {
    var body: some View {
        
        GeometryReader { geometry in
            
            VStack{
                Text("HOLA")
            }
            .background(.green)
            .frame(width: geometry.size.width,height: geometry.size.height)
            
            
        }
    }
}

#Preview {
    CategoryCardView()
}
