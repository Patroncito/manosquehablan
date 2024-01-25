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
        NavigationView {
            ZStack{

                
                LinearGradient(colors: [Color(.baseHaiti), Color(.baseNocturne)], startPoint: .top, endPoint: .bottom).ignoresSafeArea(.all)
                
                VStack(alignment: .leading){
                    
                    //MARK: HEADER
                    HeaderViewHome()
                    
                    //MARK: SCORE
                    ScoreItemView()
                    
                    //MARK: Option to Play
                    
                    ButtonOptionView()
                    
                    //MARK: ScoreBoard Global
                    LeaderboardView()
                    
                    
                    //MARK: Challenges
                    
                    ChallengesView()
                    
                }    //VSTACK
               
                
              
                
            }
        }
        


    }
}


#Preview(){
    Home()
}




