//
//  HeaderViewHome.swift
//  Manos que Hablan
//
//  Created by Alfonso Patron on 22/01/24.
//

import SwiftUI

struct HeaderViewHome : View {
    
    var body: some View {
        HStack(spacing: 10){
            ZStack{
                Circle()
                    .foregroundStyle(Color(.baseNocturne))
                    .frame(width:70)
                
                Image("pulpo")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 50)
                    .foregroundStyle(.white)
                
            }
            VStack(alignment: .leading, spacing: 10){
                
                Text("Hola de Nuevo")
                    .foregroundStyle(.white.opacity(0.6))
                    .font(.system(size: 18))
                    .bold()
                Text("Alfonso")
                    .font(.system(size: 28))
                    .foregroundStyle(.white)
                    .bold()
                
            }
            Spacer()
            
        }
        .padding(.horizontal)
        .padding(.vertical)
        
    }
    
}


#Preview {
    HeaderViewHome()
}
