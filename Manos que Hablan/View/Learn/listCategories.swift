//
//  listCategories.swift
//  Manos que Hablan
//
//  Created by Fermin Alfonso Bañuelos Patrón on 27/02/23.
//

import SwiftUI
import AVFoundation

struct listCategories: View {
    
    @Environment(\.presentationMode) var presentationMode
    
    let categories = Categoria.allCategorias()
   
    
    var body: some View{
        
        NavigationView{
            ZStack{
                
                Image("fondo1")
                    .resizable()
                    .ignoresSafeArea(.all)
                
                List(self.categories, id: \.numberOfSeccion) {
                    categoria in
                    NavigationLink(destination: DetailView3(categoriaItem: categoria)) {
                        HStack{
                            //Text("🥑")
                            EmojiCircleItem(categoriaItem: categoria)
                            Text(categoria.name).font(.headline)
                            .padding(7)
                            
                        }
                    }
                }
                .listStyle(.inset)
                .background(Color.blue)
                .navigationBarTitle("Aprender")
            
                
                
            }
            .navigationBarItems(leading:
                                    Button(action: {

                presentationMode.wrappedValue.dismiss()
            }) {
                Image(systemName: "chevron.backward")
                Text("Inicio")
                    .imageScale(.large)
            }

            )
        }
        
        
        //

        
         //

        
    }
}

//Imagen con un circulo con borde y sombra, que le da estilo.
struct EmojiCircleItem : View {
    let categoriaItem : Categoria
    
    var body: some View {
        
        ZStack {
            
            Text("\(categoriaItem.iconList)").shadow(radius: 5).font(.largeTitle).frame(width: 65, height: 65)
                .overlay(Circle().stroke(Color.purple, lineWidth: 3))
            
        }
         
    }
}


//Estructura que genera la lista de las imagenes de cada categoria.

struct DetailView3 : View {
    var categoriaItem : Categoria
    // Total Items : Este numero define la longitud de la categoria, se remplaza cada vez que selecciona una nueva categoria.
    @State var totalItems = 0
    
    //ActualPositionItem : Este numero define la posición actual en el objeto Array de Items
    
    @State var ActualPositionItem = 0
    
    @State var totalItemsReal = 0

    var body: some View {
        
      
        ZStack{
            //Color(hex: "\(Colores.lilaSuave)").ignoresSafeArea()
           // Image("fondo1").aspectRatio(contentMode: .fit).ignoresSafeArea()


            
            VStack {
                ZStack {
                    RoundedRectangle(cornerRadius: 25.0, style: .continuous)
                        .foregroundColor(Color(hex: "\(Colores.rosaPastel)"))
                        .frame(width: 200, height: 230, alignment: .center)
                    
                    Image(categoriaItem.imagenesofCategory[ActualPositionItem]).resizable().aspectRatio(contentMode: .fill
                    ).frame(width: 200, height: 230, alignment: .center).cornerRadius(20)
                } .padding(.top, 50)
                
                Spacer()
               // Text("Esta seña significa").font(.subheadline).padding(.bottom, 20)
                Text("\(categoriaItem.imagenesofCategory[ActualPositionItem].capitalized)").font(.system(size: 50)).bold().foregroundColor(.red)

                //Spacer()
                Text("\(categoriaItem.descriptionImage[ActualPositionItem])").font(.subheadline).padding(40)
                    .multilineTextAlignment(.center)
                Spacer()
                
                HStack {
                    
                    //Boton para retroceder a la imagen anterior.

                    Button {
                        
                        if(ActualPositionItem == 0 )
                        {

                            print("Has llegado al inicio de las imagenes.")
                           
                        } else {
                            ActualPositionItem -= 1
                            print("Tamaño Total",totalItems)
                            print("Posicion Actual : ", ActualPositionItem)
                            
                        }
                
                    } label: {
                        Text("Anterior")
                    }
                    .frame(width: 150, height: 50)
                    .background(Color(hex: Colores.rojoNoSaturado))
                    .foregroundColor(.white)
                    .cornerRadius(10)
                  
                    //Boton para continuar a la siguiente imagen.
                    Button {
                        
                        if(ActualPositionItem == 0)
                        {
                            //variable para poder ver si el arreglo tiene solo una entidad.
                            totalItemsReal = (categoriaItem.imagenesofCategory.count)
                            print("Arreglo real. ", totalItemsReal)
                            
                            if totalItemsReal == 1 && ActualPositionItem == 0 {
                                print("No hay mas palabras")
                            } else {
                                print("Has llegado al inicio de las imagenes.")
                                totalItems = categoriaItem.imagenesofCategory.count - 1
                                print(totalItems)
                                // Asigna a ActualPosotionItem, la posición #1 en el arreglo de la categoria solo la primera vez.
                                ActualPositionItem = (totalItems - totalItems + 1)
                                print("Posición Actual", ActualPositionItem)
                                
                                
                            }
                            
                        }  else if ActualPositionItem == totalItems{
                            print("Has Llegado al final")
                            
                        }else {
                            ActualPositionItem += 1
                            print("Tamaño Total",totalItems)
                            print("Posicion Actual : ", ActualPositionItem)
                            
                        }
                
                    } label: {
                        Text("Siguiente")
                    }
                    .frame(width: 150, height: 50)
                    .background(Color(hex: Colores.verdeNoSaturado))
                    .foregroundColor(.white)
                    .cornerRadius(10)
     
                }.padding(.bottom, 50)
            } .navigationBarTitle(Text(categoriaItem.name), displayMode: .inline)
      
        }

        
    }
     
    }



extension Color {
    init(hex: String) {
        let scanner = Scanner(string: hex)
        var rgbValue: UInt64 = 0
        scanner.scanHexInt64(&rgbValue)

        let r = (rgbValue & 0xff0000) >> 16
        let g = (rgbValue & 0xff00) >> 8
        let b = rgbValue & 0xff

        self.init(
            .sRGB,
            red: Double(r) / 0xff,
            green: Double(g) / 0xff,
            blue: Double(b) / 0xff,
            opacity: 1
        )
    }
}
