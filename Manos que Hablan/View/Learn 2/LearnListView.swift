//
//  LearnListView.swift
//  Manos que Hablan
//
//  Created by Alfonso Patron on 23/01/24.
//

import SwiftUI

struct LearnListView: View {
    

    @State private var isSelected : Bool = true
    
    
    var body: some View {
        
        //MARK: Header/Choose -> Courses / Lectures
        
        //MARK: CARD -> LIST(Best save memory) ? Scroll? (most customizable)
        ZStack {

            
            LinearGradient(colors: [Color(.baseHaiti), Color(.baseNocturne)], startPoint: .top, endPoint: .bottom).ignoresSafeArea(.all)

            // GeometryReader -> Is for take the width size of device.
            VStack {
                ButtonSelectView(aprenderSeleccionado: $isSelected)
                    .padding(.top, 10)
                if isSelected {
                    CategoriesScrollView()
                } else {
                    LectureScrollView()
                }
            }
            .padding(.horizontal)
            
        }
    }
}


#Preview {
    LearnListView()
}
