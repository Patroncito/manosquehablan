//
//  Home.swift
//  Manos que Hablan
//
//  Created by Fermin Alfonso Bañuelos Patrón on 27/02/23.
//

import SwiftUI
import AVKit

struct ItemModel {

    var subtitle : String
    var tittle : String
    var color1 : Color
    var color2 : Color
}

var dataItem: [ItemModel] =
[
    ItemModel(subtitle: "Start a new", tittle: "Quiz", color1: Color(.thPink), color2: Color(.systemPink)),
    ItemModel(subtitle: "Learn a new", tittle: "Word", color1: Color(.pmBluetiful), color2: Color(.pmThor)),
    ItemModel(subtitle: "Start a random", tittle: "Quiz", color1: Color(.sdSaflower), color2: Color(.sdSaflower))
]


struct Home: View {
    
    
    var body: some View {
        ZStack{

            LinearGradient(colors: [Color(.baseHaiti), Color(.baseNocturne)], startPoint: .top, endPoint: .bottom).ignoresSafeArea(.all)
            
            VStack{
                
                //MARK: HEADER
                Headeritem()
                
                //MARK: SCORE
                Scoreitem()
                
                //MARK: Option to Play
                ScrollView(.horizontal, showsIndicators: false) {
                    HStack(spacing: 20){
                        
                        ForEach(dataItem.indices, id: \.self){ item in
                            
                            itemToPlay(dataItem: dataItem[item])
                                .padding(.leading,  item == 0 ? 20 : 0)
                                .padding(.trailing, item == dataItem.count - 1 ? 20 : 0)
                        }
                        
                        /* ForEach(dataItem.indices, id: \.self) { index in
                            
                           let item = dataItem[index]

                           itemToPlay(dataItem : item)
                                .padding(.leading, index == 0 ? 20 : 0)
                                .padding(.trailing, index == dataItem.count - 1 ? 20 : 0)
                            
                        }*/
                    }
                }
                
                
                //MARK: ScoreBoard Global
                
                //MARK: Challenges
                
                Spacer()
                
            }    //VSTACK
            
          
            
        }


    }
}


#Preview(){
    Home()
}

struct Headeritem : View {
    
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


struct Scoreitem : View {
    var body: some View {
        HStack{
            Spacer()
            VStack(alignment: .center) {
                Text("Score")
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
                Text("Games")
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
        .padding(.bottom)


       

    }
}

struct itemToPlay : View {
    
    
    var dataItem : ItemModel
    // var colorItem : [Color]
    
    var body: some View {
        
        Button(action: {
            print(dataItem)
            
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

            
            
        })
        
    }
}
