//
//  CategoryModelCard.swift
//  Manos que Hablan
//
//  Created by Alfonso Patron on 23/01/24.
//

import Foundation
import SwiftUI

struct CategoryModelCard : Identifiable {
    
    let id : UUID = UUID()
    let name : String
    let decription : String
    let tags : [String]
    let coverLetter : String
    let colorCard : Color


}


var categoryModelCardInfo : [CategoryModelCard] = [

    CategoryModelCard(name: "Practica el Abecedario", decription: "Aprende lo mas basico de todo lenguaje, las primeras letras.", tags: ["Basico", "Facil", "Rapido"], coverLetter: "A", colorCard: Color(.pmThor)),
    CategoryModelCard(name: "Aprende los Adjetivos", decription: "Esta categoria es Increible, aprende adjetivos calificativos en LSM.", tags: ["Divertido", "Obligatorio"], coverLetter: "D", colorCard: Color(.sdSaflower))
    

]


struct LectureModelCard : Identifiable {
    
    let id : UUID = UUID()
    let name : String
    let tags : [String]
    let colorCard : Color
    
}


var lectureModelCardInfo : [LectureModelCard] = [

    LectureModelCard(name: "Qué es el Lenguaje de Señas Mexicanas (LSM)", tags: ["10 Min", "Educativo"], colorCard: Color(.pmThor)),
    LectureModelCard(name: "Como incorporar LSM en el aprendizaje de los niños", tags: ["20 Min", "Familiar"], colorCard: Color(.sdSaflower)),
    LectureModelCard(name: "10 tips para poder empatizar con discapacitados.", tags: ["1H", "Tips"], colorCard: Color(.sdTomatobaby1))

]

