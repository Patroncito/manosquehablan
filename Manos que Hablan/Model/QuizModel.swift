//
//  QuizModel.swift
//  Manos que Hablan
//
//  Created by Fermin Alfonso Bañuelos Patrón on 07/05/23.
//

import Foundation
import SwiftUI

// Estructura para poder generar una categoria de Quiz, donde contiene la imagen en tipo String (img : String) de referencia, un arreglo de respuestas de tipo string (answer : [String])y la respuesta correcta de tipo opcional de tipo enterio (correct : Int?) que corresponde a la posicion correcta de la respuesta del arreglo answer
struct QuizModel {
    
    var img : String
    var answer : [String]
    var correct : Int?
    
}

// Modelo de insersción datos de los quiz por categoria, donde se compone de un arreglo de la estructura Quizmodel

var quizAbecedario : [QuizModel] = [

    QuizModel(img: "A",  answer: ["B", "Z", "X", "A"], correct: 3),
    QuizModel(img: "B",  answer: ["X", "A", "B", "S"], correct: 2),
    QuizModel(img: "C",  answer: ["C", "H", "L", "W"], correct: 0),
    QuizModel(img: "D",  answer: ["S", "D", "T", "B"], correct: 1),
    QuizModel(img: "E",  answer: ["G", "E", "X", "B"], correct: 1),
    QuizModel(img: "F",  answer: ["F", "D", "R", "I"], correct: 0),
    QuizModel(img: "G",  answer: ["Q", "Z", "X", "G"], correct: 3),
    QuizModel(img: "H",  answer: ["O", "R", "H", "A"], correct: 2),
    QuizModel(img: "I",  answer: ["A", "H", "I", "B"], correct: 2),
    QuizModel(img: "J",  answer: ["J", "K", "L", "M"], correct: 0),
    QuizModel(img: "K",  answer: ["K", "Z", "X", "A"], correct: 0),
    QuizModel(img: "L",  answer: ["G", "J", "B", "L"], correct: 3),
    QuizModel(img: "M",  answer: ["Y", "Z", "X", "M"], correct: 3),
    QuizModel(img: "N",  answer: ["N", "G", "S", "W"], correct: 0),
    QuizModel(img: "O",  answer: ["P", "Q", "O", "T"], correct: 2),
    QuizModel(img: "P",  answer: ["P", "Q", "R", "S"], correct: 0),
    QuizModel(img: "Q",  answer: ["S", "T", "W", "Q"], correct: 3),
    QuizModel(img: "R",  answer: ["Q", "B", "R", "W"], correct: 2),
    QuizModel(img: "S",  answer: ["S", "T", "V", "W"], correct: 0),
    QuizModel(img: "T",  answer: ["W", "T", "H", "L"], correct: 1),
    QuizModel(img: "U",  answer: ["N", "U", "F", "K"], correct: 1),
    QuizModel(img: "V",  answer: ["V", "Z", "X", "E"], correct: 0),
    QuizModel(img: "W",  answer: ["I", "W", "K", "P"], correct: 1),
    QuizModel(img: "X",  answer: ["P", "X", "G", "W"], correct: 1),
    QuizModel(img: "Y",  answer: ["P", "Z", "Y", "A"], correct: 2),
    QuizModel(img: "Z",  answer: ["L", "Z", "X", "A"], correct: 1),



]

var quizAdjetivos : [QuizModel] = [
    
    QuizModel(img: "adjetivo", answer: ["adjetivo", "ante", "usted", "de"], correct: 0),
    QuizModel(img: "ante", answer: ["de", "ante", "usted", "adjetivo"], correct: 1),
    QuizModel(img: "articulo", answer: ["entre", "mi, mio", "articulo", "de"], correct: 2),
    QuizModel(img: "cada", answer: ["mi, mio", "todavia", "usted", "cada"], correct: 3),
    QuizModel(img: "conmigo", answer: ["conmigo", "todo", "todavia", "todo"], correct: 0),
    QuizModel(img: "contigo (1)", answer: ["usted", "contigo", "yo", "tu"], correct: 1),
    QuizModel(img: "contigo (2)", answer: ["tu", "yo", "contigo", "ellos"], correct: 2),
    QuizModel(img: "de", answer: ["primero", "usted", "todo", "de"], correct: 3),
    QuizModel(img: "el, ella", answer: ["el, ella", "entre", "usted", "adjetivo"], correct: 0),
    QuizModel(img: "ellos", answer: ["adjetivo", "ellos", "en", "entre"], correct: 1),
    QuizModel(img: "en", answer: ["articulo", "adjetivo", "en", "de"], correct: 2),
    QuizModel(img: "entre (1)", answer: ["tu", "contigo", "usted", "entre"], correct: 3),
    QuizModel(img: "entre (2)", answer: ["entre", "adjetivo", "usted", "ante"], correct: 0),
    QuizModel(img: "ésa, ése, eso", answer: ["cada", "ésa, ése, eso", "en", "cada"], correct: 1),
    QuizModel(img: "mi, mio", answer: ["cada", "ante", "mi, mio", "todo"], correct: 2),
    QuizModel(img: "para", answer: ["todo", "suyo", "usted", "para"], correct: 3),
    QuizModel(img: "primero", answer: ["primero", "tu", "yo", "todo"], correct: 0),
    QuizModel(img: "tambien", answer: ["contigo", "entre", "tambien", "ellos"], correct: 2),
    QuizModel(img: "todavia", answer: ["tuyo", "adjetivo", "usted", "todavia"], correct: 3),
    QuizModel(img: "todo", answer: ["todo", "conmigo", "el, ella", "entre"], correct: 0),
    QuizModel(img: "tu", answer: ["contigo", "tu", "ellos", "yo"], correct: 1),
    QuizModel(img: "tuyo", answer: ["usted", "adjetivo", "tuyo", "ellos"], correct: 2),
    QuizModel(img: "yo (1)", answer: ["yo", "ellos", "conmigo", "contigo"], correct: 0),
    QuizModel(img: "yo (2)", answer: ["tambien", "yo", "articulo", "conmigo"], correct: 1),
]

var quizAlimentos : [QuizModel] = [
    QuizModel(img: "aceite", answer: ["aceite","agrio","agua","atole"],correct: 0),
    QuizModel(img: "agrio", answer: ["aceite","agrio","agua","atole"],correct: 1),
    QuizModel(img: "agua", answer: ["aceite","agrio","agua","atole"],correct: 2),
    QuizModel(img: "atole", answer: ["aceite","agrio","agua","atole"],correct: 3),
    QuizModel(img: "avena", answer: ["avena","coca cola","cena","desayuno"],correct: 0),
    QuizModel(img: "carne", answer: ["azucar","coca cola","carne","agua"],correct: 2),
    QuizModel(img: "catsup", answer: ["aceite","agrio","agua","catsup"],correct: 3),
    QuizModel(img: "cena", answer: ["cena","catsup","avena","atole"],correct: 0),
    QuizModel(img: "coca cola", answer: ["aceite","coca cola","catsup","carne"],correct: 1),
    QuizModel(img: "comida", answer: ["azucar","coca cola","comida","cena"],correct: 2),
    QuizModel(img: "desayuno", answer: ["carne","coca cola","comida","desayuno"],correct: 3)

]

var quizAnimales : [QuizModel] = [
    QuizModel(img: "abeja", answer: ["abeja","águila","alacrán","asno"],correct: 0),
    QuizModel(img: "águila", answer: ["búfalo","águila","borrego","asno"],correct: 1),
    QuizModel(img: "alacrán", answer: ["borrego","abeja","alacrán","borrego"],correct: 2),
    QuizModel(img: "asno", answer: ["abeja","búfalo","abeja","asno"],correct: 3),
    QuizModel(img: "borrego", answer: ["borrego","asno","abeja","búfalo"],correct: 0),
    QuizModel(img: "búfalo", answer: ["asno","búfalo","asno","abeja"],correct: 1),
]

var quizCalendario : [QuizModel] = [
    QuizModel(img: "lunes", answer: ["lunes","septiembre","martes","miércoles"], correct: 0),
    QuizModel(img: "martes", answer: ["octubre","martes","miércoles","diciembre"], correct: 1),
    QuizModel(img: "miércoles", answer: ["diciembre","octubre","miércoles","mayo"], correct: 2),
    QuizModel(img: "jueves", answer: ["lunes","diciembre","martes","jueves"], correct: 3),
    QuizModel(img: "viernes", answer: ["viernes","enero","miércoles","octubre"], correct: 0),
    QuizModel(img: "sábado", answer: ["sábado","agosto","diciembre","diciembre"], correct: 1),
    QuizModel(img: "domingo", answer: ["sábado","mayo","domingo","agosto"], correct: 2),
    QuizModel(img: "enero", answer: ["lunes","agosto","septiembre","enero"], correct: 3),
    QuizModel(img: "febrero", answer: ["febrero","martes","febrero","sábado"], correct: 0),
    QuizModel(img: "marzo", answer: ["octubre","marzo","martes","lunes"], correct: 1),
    QuizModel(img: "febrero", answer: ["junio","viernes","abril","lunes"], correct: 2),
    QuizModel(img: "mayo", answer: ["agosto","martes","domingo","mayo"], correct: 3),
    QuizModel(img: "junio", answer: ["junio","enero","diciembre","jueves"], correct: 0),
    QuizModel(img: "julio", answer: ["lunes","julio","martes","enero"], correct: 1),
    QuizModel(img: "agosto", answer: ["martes","lunes","agosto","junio"], correct: 2),
    QuizModel(img: "septiembre", answer: ["enero","lunes","jueves","septiembre"], correct: 3),
    QuizModel(img: "octubre", answer: ["octubre","jueves","febrero","martes"], correct: 0),
    QuizModel(img: "noviembre", answer: ["sábado","noviembre","junio","martes"], correct: 1),
    QuizModel(img: "diciembre", answer: ["jueves","febrero","diciembre","sábado"], correct: 2),




    

]

var quizCasa : [QuizModel] = [
    QuizModel(img: "almohada", answer: ["almohada","azotea","baño","barrer"], correct: 0),
    QuizModel(img: "azotea", answer: ["baño","azotea","azotea","casa"], correct: 1),
    QuizModel(img: "baño", answer: ["casa","bote","cajón","baño"], correct:2),
    QuizModel(img: "barrer", answer: ["batidora","cama","baño","barrer"], correct: 3),
    QuizModel(img: "batidora", answer: ["batidora","cajón","casa","barer"], correct: 0),
    QuizModel(img: "bote", answer: ["barrer","bote","cajón","casa"], correct: 1),
    QuizModel(img: "cajón", answer: ["casa","almohada","cajón","cama"], correct: 2),
    QuizModel(img: "cama", answer: ["casa","bote","batidora","cama"], correct: 3),
    QuizModel(img: "casa (1)", answer: ["casa","cama","almohada","baño"], correct: 0),
    QuizModel(img: "casa (2)", answer: ["bote","casa","barrer","cama"], correct: 1)

]

var quizColores : [QuizModel] = [
    
    QuizModel(img: "amarillo", answer: ["amarillo","anaranjado","azul","azul rey"], correct: 0),
    QuizModel(img: "anaranjado", answer: ["amarillo","anaranjado","morado","verde"], correct: 1),
    QuizModel(img: "azul", answer: ["bronce","cafe","azul","blanco"], correct:2),
    QuizModel(img: "azul rey", answer: ["brillante","amarillo","rojo","azul rey"], correct: 3),
    QuizModel(img: "blanco", answer: ["blanco","bronce","rojo","negro"], correct: 0),
    QuizModel(img: "brillante", answer: ["morado","brillante","negro","color"], correct: 1),
    QuizModel(img: "bronce", answer: ["color","amarillo","bronce","claro"], correct:2),
    QuizModel(img: "cafe", answer: ["rojo","azul","azul rey","cafe"], correct: 3),
    QuizModel(img: "claro", answer: ["claro","negro","brillante","azul"], correct: 0),
    QuizModel(img: "color", answer: ["negro","color","morado","cafe"], correct: 1),
    QuizModel(img: "morado", answer: ["cafe","brillante","morado","verde"], correct:2),
    QuizModel(img: "negro", answer: ["blanco","brillante","rojo","negro"], correct: 3),
    QuizModel(img: "rojo", answer: ["rojo","verde","bronce","morado"], correct: 0),
    QuizModel(img: "verde", answer: ["cafe","verde","negro","color"], correct: 1)
]

var quizCuerpoHumano : [QuizModel] = [
    
    QuizModel(img: "barba", answer: ["barba","mano","barbilla","bigote"], correct: 0),
    QuizModel(img: "barbilla", answer: ["hombro","barbilla","lengua","bigote"], correct: 1),
    QuizModel(img: "bigote", answer: ["hombro","frente","bigote","estomago"], correct:2),
    QuizModel(img: "boca", answer: ["brazo","diente","baño","mano"], correct: 3),
    QuizModel(img: "brazo", answer: ["brazo","diente","ceja","cuello"], correct: 0),
    QuizModel(img: "cadera", answer: ["cara","cadera","mano","frente"], correct: 1),
    QuizModel(img: "cara", answer: ["frente","garganta","cara","cuello"], correct:2),
    QuizModel(img: "ceja", answer: ["diente","cuello","espalda","ceja"], correct: 3),
    QuizModel(img: "codo", answer: ["codo","espalda","diente","brazo"], correct: 0),
    QuizModel(img: "cuello", answer: ["bigote","cuello","mano","labio"], correct: 1),
    QuizModel(img: "diente", answer: ["lengua","labio","diente","barba"], correct:2),
    QuizModel(img: "espalda", answer: ["diente","bigote","boca","espalda"], correct: 3),
    QuizModel(img: "estomago", answer: ["estomago","hombro","brazo","barba"], correct: 0),
    QuizModel(img: "frente", answer: ["barba","frente","cadera","espalda"], correct: 1),
    QuizModel(img: "garganta", answer: ["espalda","lengua","garganta","barbilla"], correct:2),
    QuizModel(img: "hombro", answer: ["labio","cara","cadera","hombro"], correct: 3),
    QuizModel(img: "labio", answer: ["labio","cadera","ceja","codo"], correct: 0),
    QuizModel(img: "lengua", answer: ["codo","lengua","cadera","barbilla"], correct: 1),
    QuizModel(img: "mano", answer: ["boca","diente","mano","espalda"], correct:2)
]

var quizFrutasyVerduras : [QuizModel] = [

    QuizModel(img: "ajo", answer: ["ajo","maíz","limón","lechuga"], correct: 0),
    QuizModel(img: "almendra", answer: ["betabel","almendra","chícharo","col"], correct: 1),
    QuizModel(img: "betabel", answer: ["elote","fresa","betabel","maíz"], correct:2),
    QuizModel(img: "cacahuate", answer: ["chile","cilantro","elote","cacahuate"], correct: 3),
    QuizModel(img: "cebolla", answer: ["cebolla","col","jitomate","fresa"], correct: 0),
    QuizModel(img: "champiñon", answer: ["frijol","champiñon","fruta","chile"], correct: 1),
    QuizModel(img: "chícharo", answer: ["chícharo","chile","chícharo","cacahuate"], correct:2),
    QuizModel(img: "chile", answer: ["chícharo","elote","ajo","chile"], correct: 3),
    QuizModel(img: "cilantro", answer: ["cilantro","ajo","maíz","chícharo"], correct: 0),
    QuizModel(img: "col", answer: ["fresa","col","fruta","jitomate"], correct: 1),
    QuizModel(img: "elote", answer: ["jitomate","limón","elote","lechuga"], correct:2),
    QuizModel(img: "fresa", answer: ["limón","frijol","ajo","fresa"], correct: 3),
    QuizModel(img: "frijol", answer: ["frijol","chile","betabel","ajo"], correct: 0),
    QuizModel(img: "fruta", answer: ["almendra","fruta","cebolla","champiñon"], correct: 1),
    QuizModel(img: "jitomate", answer: ["col","frijol","jitomate","fresa"], correct:2),
    QuizModel(img: "lechuga", answer: ["almendra","ajo","champiñon","lechuga"], correct: 3),
    QuizModel(img: "limón", answer: ["limón","fresa","fruta","col"], correct: 0),
    QuizModel(img: "maíz", answer: ["chile","maíz","frijol","betabel"], correct: 1)
    
]

var quizNumeros : [QuizModel] = [

    QuizModel(img: "uno", answer: ["uno","dos","tres","cuatro"], correct: 0),
    QuizModel(img: "dos", answer: ["uno","dos","diez","mil"], correct: 1),
    QuizModel(img: "tres", answer: ["mil","cien","tres","tres"], correct:2),
    QuizModel(img: "cuatro", answer: ["seis","treinta","siete","cuatro"], correct: 3),
    QuizModel(img: "cinco", answer: ["cinco","treinta","ocho","dos"], correct: 0),
    QuizModel(img: "seis", answer: ["cuarenta","seis","mil","uno"], correct: 1),
    QuizModel(img: "siete", answer: ["cuatro","treinta","siete","ciencuenta"], correct:2),
    QuizModel(img: "ocho", answer: ["diez","nueve","veinte","ocho"], correct: 3),
    QuizModel(img: "nueve", answer: ["nueve","diez","uno","dos"], correct: 0),
    QuizModel(img: "diez", answer: ["dos","diez","seis","cien"], correct: 1),
    QuizModel(img: "veinte", answer: ["treinta","dos","veinte","uno"], correct:2),
    QuizModel(img: "treinta", answer: ["uno","dos","veinte","treinta"], correct: 3),
    QuizModel(img: "cuarenta", answer: ["cuarenta","mil","cien","cuatro"], correct: 0),
    QuizModel(img: "cincuenta", answer: ["cinco","cincuenta","cien","diez"], correct: 1),
    QuizModel(img: "cien", answer: ["uno","diez","cien","mil"], correct: 2),
    QuizModel(img: "mil", answer: ["diez","treinta","cien","mil"], correct: 3)

]
//
var quizRepublicaMexicana : [QuizModel] = [
    
    QuizModel(img: "aguascalientes", answer: ["aguascalientes","tabasco","sinaloa","sonora"], correct: 0),
    QuizModel(img: "baja california", answer: ["chiapas","baja california","méxico","morelos"], correct: 1),
    QuizModel(img: "baja california sur", answer: ["baja california","guanajuato","baja california sur","tabasco"], correct:2),
    QuizModel(img: "chiapas", answer: ["chihuahua","colima","baja california sur","chiapas"], correct: 3),
    QuizModel(img: "chihuahua", answer: ["chihuahua","durango","chiapas","morelos"], correct: 0),
    QuizModel(img: "coahuila", answer: ["oaxaca","coahuila","puebla","sonora"], correct: 1),
    QuizModel(img: "colima", answer: ["guerrero","hidalgo","colima","baja california"], correct:2),
    QuizModel(img: "durango", answer: ["guanajuato","méxico","baja california sur","durango"], correct: 3),
    QuizModel(img: "guanajuato", answer: ["guanajuato","hidalgo","puebla","sinaloa"], correct: 0),
    QuizModel(img: "guerrero", answer: ["jalisco","guerrero","michoacán","oaxaca"], correct: 1),
    QuizModel(img: "hidalgo", answer: ["michoacán","chiapas","hidalgo","querétaro"], correct:2),
    QuizModel(img: "jalisco", answer: ["méxico","tabasco","sinaloa","jalisco"], correct: 3),
    QuizModel(img: "méxico", answer: ["méxico","choahuila","chihuahua","colima"], correct: 0),
    QuizModel(img: "michoacán ", answer: ["durango","michoacán","oaxaca","puebla"], correct: 1),
    QuizModel(img: "morelos", answer: ["casa","bote","morelos","baño"], correct:2),
    QuizModel(img: "oaxaca", answer: ["puebla","méxico","tabasco","oaxaca"], correct: 3),
    QuizModel(img: "puebla", answer: ["puebla","baja california sur","morelos","baja california"], correct: 0),
    QuizModel(img: "querétaro", answer: ["sinaloa","querétaro","sonora","jalisco"], correct: 1),
    QuizModel(img: "sinaloa", answer: ["jalisco","chiapas","sinaloa","guerrero"], correct:2),
    QuizModel(img: "sonora", answer: ["tabasco","morelos","baja california sur","sonora"], correct: 3),
    QuizModel(img: "tabasco", answer: ["tabasco","baja california sur","chiapas","jalisco"], correct: 0)

]

// Funcion para poner los arreglos de los quiz de tipo [QuizModel] de forma aleatoria cada vez que se termina de jugar.
func myQuizSuffle (data : [QuizModel]) -> [QuizModel] {
    
    
    let originalArray = data
    var newArray: [QuizModel] = []

    let shuffledArray = originalArray.shuffled()

    for element in shuffledArray {
        newArray.append(element)
    }
    return newArray
}
    
// Arreglo donde se almacena el nombre de todas las categorias de los Quiz
var allQuizname = ["Abecedario"
                   , "Adjetivos"
                   ,"Alimentos"
                   ,"Animales"
                   , "Calendario"
                   , "Casa"
                   , "Colores"
                   , "Cuerpo Humano"
                   , "Frutas y Verduras"
                   , "Numeros"
                   , "Republica Méxicana"]

// Arreglo donde se almacenan todas las vistas de las categorias de los Quiz, esta ordenado de la misma forma que corresponda al orden del arreglo "AllQuizName"
let QuizGameViews: [AnyView] = [
     AnyView(QuizAbecedarioView())
 ]

let ColoresCategorias : [Color] = [Color.green, Color.yellow, Color.red, Color.cyan, Color.orange, Color.green, Color.yellow, Color.red, Color.cyan, Color.orange, Color.green]

let iconCategories : [String] = ["✏️","👋🏼","🍕","🐶","📅","🏠","🎨","🦶🏻","🍏","💯","🇲🇽"]

//Guardar la puntuación en la aplicación
func SaveScore(quiz : String , score : Int){
    UserDefaults.standard.set(score, forKey: quiz)
}

//cargar los datos de la puntuación en la aplicación
func LoadScore (quiz : String) -> Int{
    return UserDefaults.standard.integer(forKey: quiz)
}
