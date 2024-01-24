//
//  ButtonOptionView.swift
//  Manos que Hablan
//
//  Created by Alfonso Patron on 23/01/24.
//

import SwiftUI

struct ButtonOptionView: View {
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            HStack(spacing: 20){
                
                ForEach(dataItem.indices, id: \.self){ item in
                    
                    itemToPlay(dataItem: dataItem[item])
                        .padding(.leading,  item == 0 ? 20 : 0)
                        .padding(.trailing, item == dataItem.count - 1 ? 20 : 0)
                }
            }
        }
        .padding(.vertical)
    }
}



struct itemToPlay : View {
    
    
    var dataItem : ItemModel
    // var colorItem : [Color]
    
    var body: some View {
        
        Button(action: {
            
            // TODO: BUTTON
            
        }, label: {
            
            VStack(alignment: .leading, spacing: 0)
            {
                
                    
                Text(dataItem.subtitle)
                        .padding(.top, 5)
                    
                Text(dataItem.tittle)
                            .font(.largeTitle)
                            .bold()
                            .padding(.bottom, 8)
                    
                    Image(systemName: "arrow.right.circle.fill")
                        .resizable()
                        .scaledToFit()
                        .frame(height: 30)
                        .padding(.bottom, 5)
                
            }
            .foregroundStyle(.white)
            .frame(width: 140, height: 150)
            .background(LinearGradient(colors: [dataItem.color1,dataItem.color2], startPoint: .topLeading, endPoint: .bottomTrailing))
            .clipShape(RoundedRectangle(cornerRadius: 12))
            //.shadow(color: .white.opacity(0.2), radius: 7)


            
            
        })
        
    }
}

// Struct for propieties to buttons play options
struct ItemModel {

    var subtitle : String
    var tittle : String
    var color1 : Color
    var color2 : Color
}

// Data for the propities init to all buttons in the view. an array to ItemModel
var dataItem: [ItemModel] =
[
    ItemModel(subtitle: "Empezar un", tittle: "Quiz", color1: Color(.thPink), color2: Color(.systemPink)),
    ItemModel(subtitle: "Aprender algo", tittle: "Nuevo", color1: Color(.pmBluetiful), color2: Color(.pmThor)),
    ItemModel(subtitle: "Me siento con", tittle: "Suerte", color1: Color(.sdSaflower), color2: Color(.sdSaflower))
]



#Preview {
    ButtonOptionView()
}
