//
//  letterToLearn.swift
//  Manos que Hablan
//
//  Created by Fermin Alfonso Bañuelos Patrón on 22/02/23.
//

import Foundation
import UIKit


// Estructura para poder generar categorias individuales, con diferentes parametros.
// Definición de  estructura "Categoria" que contiene:
// - un nombre representado por un String
// - un número de sección representado por un Int
// - una lista de iconos representada por un String
// - una lista de imágenes de la categoría representada por un arreglo de Strings
// - una lista de descripciones de imagen de la categoría representada por un arreglo de Strings.

struct Categoria {
    let name : String
    let numberOfSeccion : Int
    let iconList : String
    let imagenesofCategory : [String]
    let descriptionImage : [String]
}

//insersion de datos para añadir todas y cada una de las propiedades de las categorias, se usa para interar en la lista de Aprender
extension Categoria {
    static func allCategorias() -> [Categoria]{
        return [
            
            Categoria(name: "Abecedario",numberOfSeccion: 1, iconList: "✏️", imagenesofCategory: ["A","B","C","D","E","F","G","H","I","J","K","L","M","N","O","P","Q","R","S","T","U","V","W","X","Y","Z"],
                descriptionImage: ["Con la mano cerrada, se muestran las uñas y se estira el dedo pulgar hacia un lado. La palma mira al frente."
                                   ,"Los dedos índice, medio, anular y meñique se estiran bien unidos y el pulgar se dobla hacia la palma, la cual mira al frente."
                                   ,"Los dedos índice, medio, anular y meñique se mantienen bien unidos y en posición cóncava; el pulgar también se pone en esa posición. La palma mira a un lado"
                                   ,"Los dedos medio, anular, meñique y pulgar se unen por las puntas y el dedo índice se estira. La palma mira al frente."
                                   ,"Se doblan los dedos completamente, y se muestran las uñas. La palma mira al frente."
                                   ,"Con la mano abierta y los dedos bien unidos, se dobla el índice hasta que su parte lateral toque la yema del pulgar. La palma mira a un lado."
                                   ,"Se cierra la mano y los dedos índice y pulgar se estiran. La palma mira hacia usted."
                                   ,"Con la mano cerrada y los dedos índice y medio bien estirados y unidos, se extiende el dedo pulgar señalando hacia arriba. La palma mira hacia usted. "
                                   ,"Con la mano cerrada, el dedo meñique se estira señalando hacia arriba. La palma se pone de lado"
                                   ,"Con la mano cerrada, el dedo meñique bien estirado señalando hacia arriba y la palma a un lado dibuja una j en el aire."
                                   ,"Se cierra la mano con los dedos índice, medio y pulgar estirados. La yema del pulgar se pone entre el índice y el medio. Se mueve la muñeca hacia arriba."
                                   ,"Con la mano cerrada y los dedos índice y pulgar estirados, se forma una l. La palma mira al frente."
                                   ,"Con la mano cerrada, se ponen los dedos índice, medio y anular sobre el pulgar."
                                   ,"Con la mano cerrada, se ponen los dedos índice y medio sobre el pulgar."
                                   ,"Con la mano se forma una letra o. Todos los dedos se tocan por las puntas."
                                   ,"Con la mano se forma una letra o. Todos los dedos se tocan por las puntas."
                                   ,"Con la mano cerrada, se ponen los dedos índice y pulgar en posición de garra. La palma mira hacia abajo, y se mueve la muñeca hacia los lados."
                                   ,"Con la mano cerrada, se estiran y entrelazan los dedos índice y medio. La palma mira al frente"
                                   ,"Con la mano cerrada, se pone el pulgar sobre los otros dedos. La palma mira al frente."
                                   ,"Con la mano cerrada, el pulgar se pone entre el índice y el medio. La palma mira al frente."
                                   ,"Con la mano cerrada, se estiran los dedos índice y medio unidos. La palma mira al frente."
                                   ,"Con la mano cerrada, se estiran los dedos índice y medio separados. La palma mira al frente. "
                                   ,"Con la mano cerrada, se estiran los dedos índice, medio y anular separados. La palma mira al frente"
                                   ,"Con la mano cerrada, el índice y el pulgar en posición de garra y la palma dirigida a un lado, se realiza un movimiento al frente y de regreso."
                                   ,"Con la mano cerrada, se estira el meñique y el pulgar. La palma mira hacia usted."
                                   ,"Con la mano cerrada, el dedo índice estirado y la palma al frente, se dibuja una letra z en el aire."]),
            Categoria(name: "Adjetivos",numberOfSeccion: 2, iconList: "👋🏼", imagenesofCategory: ["adjetivo", "ante", "articulo", "cada", "conmigo", "contigo (1)", "contigo (2)", "de", "el, ella", "ellos", "en","entre (1)", "entre (2)", "ésa, ése, eso" , "mi, mio", "para", "primero", "tambien", "todavia", "todo", "tu", "tuyo", "yo (1)", "yo (2)"],
                      descriptionImage : ["Se coloca una letra a sobre la palma de la otra mano, se desliza hacia la punta de los dedos, hasta transformarse en una d."
                                          , "Se colocan las manos abiertas, una frente a la otra, sin tocarse."
                                          ," Se coloca una letra a sobre la palma de la otra mano, tocándola con la punta del pulgar, y se mueve en medio círculo hacia abajo."
                                         ,"Se hace el número 6, y se mueve en medio círculo a un lado varias veces."
                                         ,"Se colocan los pulgares señalando hacia arriba y unidos por los dorsos de los dedos, y se mueven en línea recta hacia usted."
                                         ,"Se colocan los pulgares señalando hacia arriba y unidos por los dorsos de los dedos, y se mueven en línea recta hacia el frente"
                                         ,"Se colocan los pulgares señalando hacia arriba y unidos por los dorsos de los dedos. Luego se señala con el índice a la persona de quien se trata."
                                          ,"Se hace una letra d, y se mueve hacia un lado."
                                         ,"Se estira el dedo índice, y se dirige a la persona de quien se trata."
                                         ,"Se estira el dedo índice, se mueve en medio círculo, y con él se señala a varias personas."
                                         ,"Se colocan los dedos índice y medio dentro del puño de la otra mano."
                                         ,"Se introduce la mano abierta entre los dedos índice y medio de la otra mano."
                                         ,"Con un movimiento hacia abajo, se coloca la mano abierta entre los dedos índice y pulgar de la otra mano."
                                         ,"Se colocan los dedos índice y medio en posición de garra, y se mueven hacia arriba y abajo varias veces."
                                         ,"Con la mano abierta, se golpea el pecho."
                                         ,"Se coloca el dedo índice a un lado de la frente, y se mueve hacia abajo y a un lado."
                                         ,"Con el dedo índice, se toca el pulgar de la otra mano."
                                         ,"Se estiran los dedos índice y medio, señalando al frente, y se unen y se separan."
                                         ,"La mano en capullo, toca la palma de la otra mano golpeándola ligeramente."
                                         ,"Se hace la letra t con ambas manos, señalándose por la punta de los dedos, y se mueven en círculos alternados."
                                         ,"Con el dedo índice se señala a la persona de quien se trata."
                                         ,"Se hace una letra p, y se rota la muñeca hacia la persona de quien se habla."
                                         ,"Se coloca una letra y sobre el pecho."
                                         ,"Con el índice se señala el pecho."]),
            Categoria(name: "Alimentos",numberOfSeccion: 3, iconList: "🍕", imagenesofCategory: ["aceite", "agrio", "agua", "alimento", "apetito", "arroz", "atole", "avena", "azúcar", "bacardí", "café", "caldo", "carne", "catsup", "cena", "cereal", "cerveza", "chicle", "coca cola", "comida", "desayuno", "ensalada","hamburguesa", "harina"],
                      descriptionImage : ["Con una mano se hace una y. El dedo meñique señala la palma de la otra mano, y se hace un movimiento circular."
                                          ,"Se coloca un capullo sobre la mejilla, y se hace un movimiento vibratorio en su lugar."
                                          ,"Se estira el dedo índice; luego, se hace un movimiento de encoger y de estirar."
                                         ,"Con una mano se forma un capullo y con él se señala la boca. Se hace un movimiento al frente y de regreso."
                                         ,"Con la mano cerrada, se estira el dedo índice, y se coloca entre los labios."
                                         ,"Con una mano se hace una a y se coloca sobre la palma de la otra mano con el pulgar hacia arriba, luego la golpea varias veces a los lados."
                                         ,"Se hace una letra a con ambas manos, y se mueven alternadas subiendo y rotando la muñeca hacia abajo."
                                         ,"Con una mano se hace una a y se coloca en la boca, tocándola con el pulgar."
                                         ,"Se hace una a sobre la boca con la palma hacia usted, y se hace un movimiento corto hacia abajo."
                                         ,"Los dedos índice, medio y pulgar en posición de garra se colocan a un lado del cuello y lo tocan con la punta de los dedos."
                                         ,"Se hace una c, que se coloca en el puño de la otra mano, con un movimiento circular en su lugar."
                                         ,"Se hace una c con los dedos ligeramente separados, y se coloca sobre el dorso del puño, tocándolo con la punta de los dedos."
                                         ,"Con los dedos índice y pulgar de una mano se pellizca el dorso de la otra."
                                          ,"Con la palma de la mano abierta se golpea el puño de la otra."
                                         ,"la boca, señalándola con la punta de los dedos índice, medio, anular y meñique, con movimiento al frente y de regreso varias veces."
                                          ,"Se hace una c, y se sacude la mano varias veces."
                                         ,"Se colocan los dedos índice y medio en posición de garra, y se golpea el puño de la otra mano en posición vertical."
                                         ,"Se colocan los dedos índice y medio en posición de garra, al lado de la boca, y se hace un movimiento de mascar chicle."
                                         ,"Se hace una c y se mueve hacia arriba y a un lado dos veces."
                                         ,"Con una mano se forma un capullo y con él se señala la boca. Se hace un movimiento al frente y de regreso."
                                         ,"Con una mano se forma un capullo y con él se señala la boca. Se hace un movimiento al frente y de regreso. Luego se hace una b y se roza con el dorso la palma de la otra mano."
                                         ,"Con las manos abiertas en posición de garra y las palmas mirando hacia arriba, se hace un movimiento que imita la acción de mezclar la ensalada."
                                         ,"Se hace la letra c con ambas manos y se colocan a los lados de la boca. Se simula sostener una hamburguesa y darle una mordida."
                                         ,"Se abre la mano y con la punta de los dedos se toca la palma de la otra mano. Se hace un movimiento hacia arriba, cerrando la mano en punta."]),
            Categoria(name: "Animales",numberOfSeccion: 4, iconList: "🐶", imagenesofCategory: ["abeja", "águila", "alacrán", "almeja", "animal", "ardilla", "asno", "borrego", "búfalo", "búho"]
                      ,descriptionImage: ["Con los dedos índice y medio sobre los labios, se hace un movimiento hacia abajo. Luego se hace una v con movimiento hacia los lados."
                                         ,"Se colocan el índice y el pulgar en posición de garra sobre la boca, tocándola con el dorso de la mano, y se hace un movimiento hacia adelante y atrás."
                                         ,"Con la punta del dedo índice se toca el dorso de la otra mano, simulando el piquete del alacrán.","Se unen las manos por las muñecas y las yemas de los dedos, con las puntas señalando hacia el frente, se separan y se unen varias veces."
                                         ,"Se hace una a con la palma hacia abajo, se mueve en medio círculo hacia arriba hasta quedar transformada en l, y con la yema del dedo índice de esa mano se toca el puño de la otra mano."
                                         ,"Se colocan las manos abiertas en posición cóncava sobre la boca, simulando que se come una avellana."
                                         ,"Se hace una letra b, y se coloca en la parte lateral de la cabeza, tocándola con la muñeca. Luego se realiza un movimiento hacia adelante y atrás, sin separarse."
                                         ,"Con la palma al frente en posición cóncava, se hace un medio círculo, hacia usted; y se golpea con la muñeca en la frente"
                                         ,"Se hace la letra i con ambas manos y se colocan a los lados de la frente."
                                         ,"Se unen por la punta los índices y pulgares de cada mano y se colocan alrededor de los ojos."]),
            Categoria(name: "Calendario",numberOfSeccion: 5, iconList: "📆", imagenesofCategory: ["lunes", "martes", "miércoles", "jueves", "viernes", "sábado", "domingo", "enero", "febrero", "marzo", "abril", "mayo", "junio", "julio", "agosto", "septiembre", "octubre", "noviembre", "diciembre"]
                      , descriptionImage: ["Se hace una letra l, y se mueve en círculo."
                                          ,"Se hace una letra l con el dedo medio estirado, y se mueve en círculo."
                                          ,"Se hace una letra l con los dedos medio, anular y meñique estirados, y se mueve en círculo."
                                          ,"Se hace una letra j, y se mueve en círculo."
                                          ,"Se hace una letra v, y se mueve en círculo."
                                          ,"Se hace una letra s, y se mueve en círculo."
                                          ,"Se hace una letra d, y se mueve en círculo."
                                          ,"Se hace una letra e, y se rota la muñeca a los lados."
                                          ,"Se hace una letra f, y se rota la muñeca a los lados."
                                          ,"Se hace una letra m, y se mueve en círculo alrededor de la oreja."
                                          ,"Se hace una letra a, y se mueve en círculo alrededor de la oreja."
                                          ,"Se hace una letra m, y se rota la muñeca a los lados."
                                          ,"Se hace una letra i, y se rota la muñeca a los lados."
                                          ,"Se hace una letra i con el pulgar y el índice estirados, y se rota la muñeca a los lados"
                                          ,"Se hace una letra a, y se rota la muñeca a los lados."
                                          ,"Se hace una letra s, y se rota la muñeca a los lados."
                                          ,"Se hace una letra o, y se rota la muñeca a los lados."
                                          ,"Se hace una letra u, y se rota la muñeca a los lados."
                                          ,"Se hace una letra d, y se rota la muñeca a los lados."]),
            Categoria(name: "Casa",numberOfSeccion: 6, iconList: "🏠", imagenesofCategory: ["almohada", "azotea", "baño", "barrer","batidora","bote","cajón","cama","casa (1)","casa (2)"]
                      , descriptionImage: ["Se colocan las palmas, una frente a la otra, a la altura del hombro y se inclina la cabeza hacia ese lado."
                                          ,"Se hace la letra c con ambas manos y una se coloca sobre la otra."
                                          ,"Se hace una letra b, se coloca sobre el pecho y se mueve de arriba a abajo."
                                          ,"Con las manos cerradas, una más arriba que la otra e inclinadas, se imita el movimiento de barrer."
                                          ,"Se gira la mano cerrada hacia abajo con el índice y el pulgar estirados, simulando el movimiento de una batidora."
                                          ,"Se coloca una palma sobre la otra sin tocarse, simulando tener un bote entre las manos."
                                          ,"Se coloca la mano en posición de garra con la palma hacia arriba, sobre la palma de la otra mano, tocándola por el dorso de los dedos, y se simula el movimiento de abrir un cajón."
                                          ,"Se hace una letra c y se coloca al lado de la cara, tocándola con la punta de los dedos."
                                          ,"Se unen las manos abiertas por las yemas de los dedos y se mantienen las palmas separadas."
                                          ,"Se hace la letra b en ambas manos con las palmas hacia arriba, y se mueven al mismo tiempo en medio círculo hasta unirse por la parte lateral de los índices."]),
            Categoria(name: "Colores",numberOfSeccion: 7, iconList: "🎨", imagenesofCategory: ["amarillo","anaranjado","azul","azul rey","blanco","brillante","bronce","cafe","claro","color","morado","negro","rojo","verde"], descriptionImage:
                        ["Se coloca una letra a sobre el dorso de la otra mano, y se mueve en círculo sin separarse."
                        ,"Se coloca una letra c sobre la mejilla, tocándola con la parte lateral del dedo índice y pulgar, y se cierra y abre la mano.",
                        "Se coloca una letra a sobre la palma de la otra mano, tocándola con la parte lateral del dedo meñique, y se mueve en círculo sin separarla.",
                        "Se coloca una letra a sobre la palma de la otra mano, tocándola con la parte lateral del dedo meñique, y se mueve en círculo sin separarla. Luego se coloca una letra r a la altura de la oreja, y se mueve en círculo.",
                        "Se coloca una letra b sobre el dorso de la otra mano, y se desliza a un lado en línea recta, sin separarse.",
                         "Se colocan las palmas al frente, una al lado de la otra, y se mueven, uno a uno, los dedos.",
                        "Se coloca una letra b sobre la palma de la otra mano, tocándola con la parte lateral del dedo meñique, y se golpea la palma varias veces.",
                        "Se hace la letra c con ambas manos colocadas una sobre la otra, tocándose con la parte lateral del dedo índice y meñique, y se mueven en círculo sin separarse",
                        "Se hace un capullo con ambas manos, tocándose con las puntas de los dedos, y se mueven en medio círculo hacia arriba y a los lados, abriendo las manos al mismo tiempo.",
                        "Con el dedo índice se toca el dorso de la otra mano, y se desliza el dedo hacia usted.",
                         "Se hace una letra m, y con la punta de los dedos de esa mano se toca la parte lateral del dedo índice de la otra, y se mueven a los lados, sin separarse."
                        ,"Se coloca una letra n sobre la palma de la otra mano, tocándola con las yemas de los dedos, y se mueve en línea recta al frente y de regreso.",
                        "Con la yema del dedo índice estirado, se tocan los labios, y se mueve hacia abajo varias veces.",
                        "Se coloca una letra v sobre la palma de la otra mano, y se desliza a la punta de los dedos y de regreso."]),
            Categoria(name: "Cuerpo Humano",numberOfSeccion: 8, iconList: "🦶🏻", imagenesofCategory: ["barba","barbilla","bigote","boca","brazo","cadera","cara","ceja","codo","cuello","diente","espalda","estómago","frente","garganta","hombro","labio","lengua","mano"], descriptionImage: [
                "Se coloca la mano en posición de garra sobre la parte superior de la barba, tocándola con la punta de los dedos, y se recorre hacia abajo."
                ,"Con el índice y el pulgar se rodea la barbilla, y los dedos vibran en su lugar."
                ,"Con el índice y el pulgar se simula tomar el bigote, y se mueven los dedos en medio círculo hacia arriba y a un lado."
                ,"Con el índice se señala la boca, y se mueve en círculo alrededor de ella."
                ,"Se coloca la mano abierta sobre el otro brazo, y se desliza hacia la muñeca."
                ,"Se coloca la mano abierta sobre la cadera, y la golpea ligeramente."
                ,"Con el índice se señala la frente, y se mueve el dedo alrededor de la cara."
                ,"Con el índice se recorre la ceja."
                ,"Con la mano abierta se rodea el codo del otro brazo doblado, y se mueve en círculo alrededor de éste."
                ,"Con las yemas de la mano abierta se toca el cuello."
                ,"Con el índice se señala un diente, y lo golpea ligeramente."
                ,"Se coloca la mano abierta sobre la espalda."
                ,"Con la palma de la mano se golpea el estómago ligeramente."
                ,"Se coloca la palma de la mano sobre la frente, y vibra en su lugar."
                ,"Se coloca una letra u sobre el cuello, tocándolo con las yemas, y se desliza hacia abajo, sin separarse."
                ,"Con las yemas de la mano abierta se toca el hombro."
                ,"Con el índice se señalan los labios, y se recorren de un lado al otro."
                ,"Con el índice se señala la lengua."
                ,"Se muestra la mano abierta a la persona con quien se habla."
            ]),
            Categoria(name: "Frutas y Verduras",numberOfSeccion: 9, iconList: "🍏", imagenesofCategory: ["ajo","almendra","betabel","cacahuate","cebolla","champiñon","chícharo","chile","cilantro","col","elote","fresa","frijol","fruta","jitomate","lechuga","limón","maíz"], descriptionImage: [
                "Se coloca el índice en posición de garra sobre la nariz, y se simula rascarla."
                ,"Se estiran el índice y el pulgar y casi se juntan, sin tocarse, al frente."
                ,"Con el índice se dibuja un espiral, y se señala la otra mano, que hace una c."
                ,"Con una mano se rodea el dedo índice de la otra, y se desliza la yema del pulgar varias veces"
                ,"Se colocan los dedos índice, medio y pulgar estirados sobre la nariz, tocándola con la muñeca, y se mueven en círculo al frente."
                ,"Se coloca la mano abierta con la palma hacia abajo sobre el dedo índice de la otra mano."
                ,"Se colocan los dedos en posición de capullo con la palma hacia abajo sobre el dorso del dedo índice de la otra mano, y se mueve en pequeños semicírculos hasta llegar a la punta del dedo."
                ,"Se coloca la mano, con el índice y el meñique estirados, sobre la barbilla, tocándola con la parte lateral del índice, y se desliza a un lado y abajo, sacudiendo la mano."
                ,"Se hace una letra c, y se mueve en espiral hacia arriba, por encima del dedo índice estirado de la otra mano cerrada."
                ,"Se colocan las manos en posición cóncava, tocándose por la punta de los dedos y las muñecas, abriéndose y separándose al mismo tiempo."
                ,"Se coloca una letra b sobre los labios, tocándolos con la parte lateral del índice, y se desliza a un lado, girando la mano al mismo tiempo."
                ,"Se coloca una letra f sobre la nariz, y se mueve al frente y de regreso sobre la cara varias veces."
                ,"Con la mano haciendo un capullo, se rodea el dedo índice de la otra mano, y se gira hacia adelante y atrás."
                ,"Con una mano se rodea la otra, que está en capullo, y se mueve a un lado hasta separarse."
                ,"Se colocan el índice y el pulgar en posición de garra sobre la mejilla."
                ,"Se hace la letra b con ambas manos, tocándose con la punta de los dedos. Luego se mueven juntas hacia arriba, separando los dedos."
                ,"Se coloca la mano abierta sobre la mejilla, y se mueve hacia abajo hasta quedar en capullo, mientras se hace el gesto de probar algo agrio."
                ,"Se coloca una letra b sobre los labios, tocándolos con la parte lateral del índice, y se desliza a un lado, girando la mano al mismo tiempo."]),
            Categoria(name: "Numeros",numberOfSeccion: 10, iconList: "💯", imagenesofCategory: ["uno","dos","tres","cuatro","cinco","seis","siete","ocho","nueve","diez","veinte","treinta","cuarenta","cincuenta","cien","mil"], descriptionImage: [
             "Se estira el índice con la palma al frente."
            ,"Se estiran los dedos índice y medio."
            ,"Se estiran los dedos índice, medio y anular con la palma al frente."
            ,"Se estiran los dedos índice, medio, anular y meñique."
            ,"Se abre la mano con la palma al frente y los dedos separados."
            ,"Se hace la letra a con el pulgar hacia arriba."
            ,"Se hace una letra g, colocada en forma inclinada."
            ,"Se estiran los dedos pulgar, índice y medio, separados con la palma hacia usted."
            ,"Se hace la letra b con la palma hacia usted. Luego se cierran los dedos rodeando el pulgar."
            ,"Se hace el número 5 con la palma hacia arriba, y se rota la mano rápidamente hacia abajo."
            ,"Con la mano cerrada, el índice y el pulgar se tocan por la punta, y se unen y se separan."
            ,"Con la punta del dedo medio se toca la punta del pulgar, mientras el índice permanece ligeramente levantado."
            ,"Se abre la mano, con el índice y el pulgar tocándose por las yemas, y éstos se unen y se separan."
            ,"Se abre la mano con la palma hacia usted y los dedos separados, y se mueven hacia adelante y atrás uno por uno en forma alternada."
            ,"Se estira el índice, y se mueve a un lado hasta transformarse en c."
            ,"Se estira el dedo índice. Luego se coloca una m sobre la palma de la otra mano, tocándola con las puntas de los dedos."
            ]),
            Categoria(name: "Republica Mexicana",numberOfSeccion: 11, iconList: "🇲🇽", imagenesofCategory: ["aguascalientes","baja california","baja california sur","chiapas","chihuahua","coahuila","colima","durango","guanajuato","guerrero","hidalgo","jalisco","méxico","michoacán","morelos","oaxaca","puebla","querétaro","sinaloa","sonora","tabasco"], descriptionImage:
                        ["Se coloca el índice en posición de garra, y se estira y se encoge. Luego se coloca una c a la altura de la boca, y se mueve en círculo."
                         ,"Con el índice y el pulgar se rodea el lóbulo de la oreja. Luego se hace una n y se mueve en línea recta hacia arriba."
                         ,"Con el índice y el pulgar se rodea el lóbulo de la oreja. Luego se hace una s, y se mueve en línea recta hacia abajo."
                         ,"Se hace la letra c con ambas manos, una frente a la otra. Luego se hace la h en ambas manos con las palmas hacia usted."
                         ,"Se hace una letra c. Luego se coloca una h, sobre la frente."
                         ,"Se coloca una letra c sobre la frente, tocándola con el dorso del pulgar, y se desliza hacia abajo."
                         ,"Se coloca la mano abierta con la palma hacia la oreja, a un lado de la frente, y se mueve en línea recta a un lado, hasta que queda la mano cerrada en punta."
                         ,"Se hace una letra d a la altura de la oreja, se rota la mano varias veces."
                         ,"Se hace una letra g, señalando al frente con el índice, y se rota la muñeca a los lados."
                         ,"Con las yemas del índice y el meñique frente a frente, se dibuja una patilla sobre la mejilla."
                         ,"Se colocan los dedos pulgar, índice y medio en posición de garra, sobre un lado de la frente, tocándola con la punta del pulgar, y se mueven en ondas hacia abajo."
                         ,"Se coloca la mano cerrada sobre la boca, tocándola con el dorso, y se mueve al frente, estirando el índice y el pulgar."
                         ,"Se coloca una letra v sobre la frente, tocándola con las yemas de los dedos, y se mueve hacia abajo y al frente."
                         ,"Se hace una letra m, señalando la oreja con la punta de los dedos, y se rota la mano varias veces."
                         ,"Se coloca la mano abierta a la altura de la cabeza, y se mueve hacia atrás, cerrando la mano al mismo tiempo."
                         ,"Se hace una letra o, y se rota la mano varias veces."
                         ,"Se coloca una letra p a la altura de la oreja, y se rota la mano varias veces."
                         ,"Se hace una letra q con la punta de los dedos señalando la oreja, y se rota la mano varias veces."
                         ,"Se coloca una letra s a un lado de la frente, y se mueve en ondas hacia abajo."
                         ,"Se coloca la mano abierta con los dedos unidos sobre los labios, golpeándolos ligeramente, y se articula la letra o con los labios."
                         ,"Se hace una letra t con el pulgar señalando la oreja, y se rota la muñeca hacia los lados."]),
        ]
    }
}


// Estructura declarativa con el nombre Colores, para poder usar colores personalizados en codigo hexadecimal en todo el proyecto.

struct Colores {
    static let rosaPastel = "F9C5CB"
    static let grisPerla = "EDEDED"
    static let rojoNoSaturado = "FA3029"
    static let verdeNoSaturado = "23DCBB"
}

