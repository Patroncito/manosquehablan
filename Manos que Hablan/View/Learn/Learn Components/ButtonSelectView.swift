//
//  ButtonSelectView.swift
//  Manos que Hablan
//
//  Created by Alfonso Patron on 24/01/24.
//

import Foundation
import SwiftUI


struct ButtonSelectView : View {
    
    @Binding var aprenderSeleccionado : Bool

    var body: some View {
                
        ZStack {
            
            Color(.baseNocturne)
                .frame(maxWidth: .infinity, maxHeight: 60)
                .clipShape(RoundedRectangle(cornerRadius: 8))
            
           
            HStack(spacing: 0) {
                        BotonSegmento(titulo: "Categorias", seleccionado: aprenderSeleccionado) {
                            aprenderSeleccionado = true
                        }

                        BotonSegmento(titulo: "Lecturas", seleccionado: !aprenderSeleccionado) {
                            aprenderSeleccionado = false
                        }
                    }
                    .clipShape(RoundedRectangle(cornerRadius: 8))
        }

            }
    
        
    }



struct BotonSegmento : View {
    var titulo: String
    var seleccionado: Bool
    var onTap: () -> Void

    var body: some View {
        Button(action: {
            onTap()
        }) {
            Text(titulo)
                .foregroundColor(seleccionado ? .black : .gray)
                .frame(maxWidth: .infinity)
                .bold()
                .frame(height: 60)
                .background(seleccionado ? Color.white : Color(.baseNocturne))
                .cornerRadius(8)
                
        }

    }
}


#Preview(){
    ButtonSelectView(aprenderSeleccionado: .constant(true))
}
