
// EJERCICIO 1
/*
// Array con números integrados
var num : [Int] = [3,5,8,32,17]

// Sumamos los elementos del Array
var arraySum = num.reduce(0, +)

// Calculamos el total de
// elementos del Array
var length = num.count

// Sacamos la media
var media = Double(arraySum)/Double(length)

print(num)
print("La media es: ", media)
*/

// EJERCICIO 2
/*
// Función para preguntar si quiere jugar
func preguntaJugar() {
    print("¿Quieres jugar a un juego? (si/no)")
    if let respuesta = readLine()?.lowercased()
    {
        if respuesta == "si" || respuesta == "si" {
            print("Vamos a jugar a la ruleta rusa")
            jugarRuletaRusa()
        }
        else {
            print("Quizas en otra ocasión")
        }
    }
}
// Llamar a la función de preguntaJugar
preguntaJugar()
// Función para iniciar el juego
func jugarRuletaRusa() {
    
    // Posición de la bala en el tambor
    let posicionBala = girarTambor()
    // Posición inicial del tambor
    var posicionTambor = girarTambor()
    
    // Nombre de los jugadores
    let jugador1 = "Jugador 1"
    let jugador2 = "Jugador 2"
    
    var juegoTerminado = false
    
    // Alternar entre jugadores hasta que uno pierda
    while !juegoTerminado {
        // Turno del jugador 1
        print("Turno del \(jugador1). Presione Enter para disparar....")
        _ = readLine()
        juegoTerminado = disparar(jugador: jugador1, posicionTambor: posicionTambor, posicionBala: posicionBala)
        if juegoTerminado {break}
        
        // Avanza la posición del tambor
        posicionTambor += 1
        
        // Volver a posición 1 si el tambor supera el 6
        if posicionTambor > 6 {
            posicionTambor = 1
        }
        
        // Turno del jugador 2
        print("Turno del \(jugador2). Presione Enter para disparar....")
        _ = readLine()
        juegoTerminado = disparar(jugador: jugador2, posicionTambor: posicionTambor, posicionBala: posicionBala)
        if juegoTerminado {break}
        
        // Avanza la posición del tambor
        posicionTambor += 1
        
        // Volver a posición 1 si el tambor supera el 6
        if posicionTambor > 6 {
            posicionTambor = 1
        }
    }
}

func girarTambor() -> Int {
    return Int.random(in: 1...6)
}

// Función para que un jugador dispare
func disparar (jugador: String, posicionTambor: Int, posicionBala: Int) -> Bool {
    print ("💥​\(jugador) dispara...")
    
    // Comprobar si la posición del tambor es la misma que la de bala
    if posicionTambor == posicionBala {
        print("🤯​\(jugador) ha perdido, la bala estaba en la posición \(posicionTambor).")
        return true // El jugador ha perdido
    }else {
        print ("\(jugador) se ha salvado")
        return false
    }
}
*/
/*
// EJERCICIO 3

func calcularMedia(_ numeros: [Int]) -> Double
{
    // Sumamos los elementos del Array
    let sum = numeros.reduce(0, +)
    // Calculamos el total de elementos del Array
    let cant = numeros.count
    // Sacamos la media
    return Double(sum)/Double(cant)
}

func introducirNum() -> [Int]
{
    var numeros: [Int] = []
    
    while true {
        print("Introduce un número (o pon 'fin' para terminar): ", terminator: "")
        if let input = readLine() {
            if input.lowercased() == "fin" {
                break
            }
            else if let numero = Int(input)
            {
                numeros.append(numero)
            }
            else {
                print("Por favor, introduzca un número válido")
                
            }
        }
    }
    return numeros
}

let numeros = introducirNum()

if numeros.isEmpty
{
    print("No has introducido ningún número")
}
else {
    // Calculamos la media
    let media = calcularMedia(numeros)
    
    print("\(numeros)")
    print("La media es: \(media)")
}
*/

// EJERCICIO 4

print("Introduce una frase: ")
if let frase = readLine()
{
    // Separa las palabras de la frase
    let palabras = frase.split(separator: " ")
    
    // Crear Array para las palabras censuradas
    var palabrasCensuradas = [String]()
    
    // Recorrer cada palabra
    for palabra in palabras {
        // Comprobar si empieza por "j", "p" o "m" (minúsculas o mayúsculas)
        if palabra.lowercased().hasPrefix("j") || palabra.lowercased().hasPrefix("p")
            || palabra.lowercased().hasPrefix("m") {
            
            // Añadirle asteríscos a las palabras censuradas
            palabrasCensuradas.append("*****")
        }
        else {
            // Si no, agregar la frase sin censura.
            palabrasCensuradas.append(String(palabra))
        }
    }
    
    // Crear la frase
    let resultado = palabrasCensuradas.joined(separator: " ")
    
    print(resultado)
}







