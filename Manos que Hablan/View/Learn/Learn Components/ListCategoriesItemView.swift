//
//  ListCategoriesItemView.swift
//  Manos que Hablan
//
//  Created by Alfonso Patron on 24/01/24.
//

import SwiftUI

struct ListCategoriesItemView: View {
    
    let categories = Categoria.allCategorias()
    var headerHeight : CGFloat = 500
    @Binding var idCategory : Int

    var body: some View {
        let rutaPrueba = categories[0].imagenesofCategory[1]
        let rutaPrueba2 = categories[0]

        
        ZStack{
            Color(.baseNocturne).ignoresSafeArea()
            
            
        //MARK: VSTACK -> IMAGE -> BUTTONS -> FAVSS
            
            VStack{
                
                //MARK: IMAGE
                
                VStack {
                    
                    ZStack(alignment: .top) {
                        GeometryReader { geo in
                            
                            Image(rutaPrueba)
                                .resizable()
                                .scaledToFill()
                                .frame(maxWidth: .infinity, maxHeight: headerHeight)
                                .clipShape(RoundedRectangle(cornerRadius: 15))
                                .ignoresSafeArea()
                            
                        }.aspectRatio(contentMode: .fill)
                        
                        HStack{
                            //Back Button
                            Button {
                                print("back")
                            } label: {
                                Circle()
                                    .fill(.white)
                                    .frame(width: 54)
                                    .overlay(
                                        Image(systemName: "arrow.left")
                                            .resizable()
                                            .scaledToFit()
                                            .foregroundColor(.black)
                                            .frame(width: 18)
                                        
                                    )
                                    .shadow(color: .black.opacity(0.5), radius: 10, x: 0.0, y: 0.0)
                            }
                            .padding(.horizontal)
                            
                            Spacer()
                            
                            HStack(spacing: -22){
                                
                                
                                Button {
                                    print("favorite")
                                } label: {
                                    Circle()
                                        .fill(.white)
                                        .frame(width: 54)
                                        .overlay(
                                            Image(systemName: "heart")
                                                .resizable()
                                                .scaledToFit()
                                                .foregroundColor(.black)
                                                .frame(width: 20)
                                            
                                        )
                                        .shadow(color: .black.opacity(0.5), radius: 10, x: 0.0, y: 0.0)
                                }
                                .padding(.horizontal)
                                
                                Button {
                                    print("extra")
                                } label: {
                                    Circle()
                                        .fill(.white)
                                        .frame(width: 54)
                                        .overlay(
                                            Image(systemName: "mic")
                                                .resizable()
                                                .scaledToFit()
                                                .foregroundColor(.black)
                                                .frame(width: 14)
                                            
                                        )
                                        .shadow(color: .black.opacity(0.5), radius: 10, x: 0.0, y: 0.0)
                                }
                                .padding(.horizontal)
                            }
                            
                            
                            
                        }
                        
                    }
                    

                    VStack{
                        
                        HStack(alignment: .center){
                            Text(rutaPrueba)
                                .foregroundStyle(.white)
                                .font(.system(size: 70, weight: .semibold))
                            
                            
                            Spacer()
                            
                            Text(rutaPrueba2.iconList)
                                
                                .font(.system(size: 40, weight: .regular))

                        }
                        .padding(.horizontal)
                        
                        
                        
                        VStack(alignment: .leading){
                            
                            Text("Instrucciónes")
                            
                                .font(.title2)
                                .foregroundStyle(.gray.opacity(0.8))
                            
                            
                            Text(rutaPrueba2.descriptionImage[0])
                                .multilineTextAlignment(.leading)
                                .font(.title)
                                .foregroundStyle(.white)
                            
                            Spacer()
                        }
                        .padding(.horizontal)


                    }

                    Spacer()

                }
                
                
                // MARK: DATA
                
                


            }
        
        }


    }
}

#Preview {
    ListCategoriesItemView(idCategory: .constant(8))
}
