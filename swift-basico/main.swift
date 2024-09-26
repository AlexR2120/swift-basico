
// EJERCICIO 1

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

// EJERCICIO 2

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

// Función para iniciar el juego
func jugarRuletaRusa() {
    
    // Función para preguntar si quiere jugar
    func preguntaJugar() {
        print("¿Quieres jugar a un juego? (si/no)")
    }
    
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
        juegoTerminado = disparar(jugador: jugador1, posicionTambor: posicionTambor, posicionBala: posicionBala)
        if juegoTerminado {break}
        
        // Avanza la posición del tambor
        posicionTambor += 1
        
        // Volver a posición 1 si el tambor supera el 6
        if posicionTambor > 6 {
            posicionTambor = 1
        }
    }
    
    
    
}







