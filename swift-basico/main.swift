// import Foundation

// print("888 PokerStars")

func tieneCaracteresEspeciales(texto: String) -> Bool {
    let especiales = "!¡$%/()?¿+-*,.;:{}[]"
    for letra in texto {
        for especial in especiales {
            if letra == especial {
                return true
            }
        }
    }
    return false
}

print("¿Cómo te llamas?")
var nombre = readLine()!
var nombreIncorrecto = false

repeat {
    if nombre.count > 10 { // Máximo 10 letras
        print("ERROR!: Nombre demasiado largo, escribe otro")
        nombreIncorrecto = true
        nombre = readLine()!
    } else if nombre.first!.isNumber { // No empezar por número
        nombreIncorrecto = true
        print("ERROR!: No se puede empezar con un número, escribe otro")
        nombre = readLine()!
    } else if
        tieneCaracteresEspeciales(texto: <#T##String#>) { // Sin carácteres especiales
        nombreIncorrecto = true
        print("ERROR! No se puede empezar con un número, escribe otro nombre")
        nombre = readLine()!
    } else {
        nombreIncorrecto = false
    }
} while nombreIncorrecto

print("Hola", nombre)


