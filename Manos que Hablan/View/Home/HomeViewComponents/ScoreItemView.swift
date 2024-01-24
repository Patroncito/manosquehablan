//
//  ScoreItemView.swift
//  Manos que Hablan
//
//  Created by Alfonso Patron on 23/01/24.
//

import SwiftUI

struct ScoreItemView : View {
    var body: some View {
        HStack{
            Spacer()
            VStack(alignment: .center) {
                Text("Puntuación")
                    .foregroundStyle(.white.opacity(0.7))
                    .font(.footnote)
                HStack {
                    Image(systemName: "star.fill")
                        .resizable()
                        .foregroundStyle(.white)
                        .scaledToFit()
                        .frame(width: 20)
                        .padding(.trailing, 4)

                    Text("665")
                        .font(.title)
                        .bold()
                    .foregroundStyle(.white)
                }

            }
            Spacer()
            VStack(alignment: .center) {
                Text("Partidas")
                    .foregroundStyle(.white.opacity(0.7))
                    .font(.footnote)
                
                HStack {
                    Image(systemName: "gamecontroller.fill")
                        .resizable()
                        .foregroundStyle(.white)
                        .scaledToFit()
                        .frame(width: 25)
                        .padding(.trailing, 4)
                    Text("122")
                        .font(.title)
                        .bold()
                    .foregroundStyle(.white)
                }

            }
            Spacer()
        }
        .frame(height: 100)
        .background(LinearGradient(colors: [Color(.baseHaiti), Color(.baseHaiti)], startPoint: .leading, endPoint: .trailing))
        .clipShape(RoundedRectangle(cornerRadius: 20))
        .padding(.horizontal)


       

    }
}

#Preview {
    ScoreItemView()
}
