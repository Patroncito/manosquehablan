//
//  LearnListView.swift
//  Manos que Hablan
//
//  Created by Alfonso Patron on 23/01/24.
//

import SwiftUI

struct LearnListView: View {
    var body: some View {
        
        //MARK: Header/Choose -> Courses / Lectures
        
        //MARK: CARD -> LIST(Best save memory) ? Scroll? (most customizable)
        
        ZStack {
            Color.black.ignoresSafeArea()
            GeometryReader { geometry in
                ScrollView(.vertical, showsIndicators: false){
                    VStack(spacing: 20){
                        
                        LearnCardView(color: Color(.pmThor), geometry: geometry)
                        LearnCardView(color: Color(.sdSaflower), geometry: geometry)
                        LearnCardView(color: Color(.sdPastelgreen), geometry: geometry)

                    }
                    .padding(.horizontal, 20)
                }
            }
        }
    }
}


#Preview {
    LearnListView()
}
