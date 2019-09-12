//
//  Persona.swift
//  EjemploTomarFoto
//
//  Created by Isaac Velazquez on 16/12/17.
//  Copyright © 2017 MobileStudio. All rights reserved.
//

import UIKit

class Persona {
    var edad: Int!
    
    func caminar() {
        print("Estoy caminando")
    }
    
    func esMayorDeEdad() -> Bool {
        if edad >= 18 {
            return true
        }
        return false
    }
    
    static func edadMasValor(edad: Int,valor: Int) -> Int {
        return edad + valor
    }
    
    static func correr() {
        print("Estoy corriendo")
    }
    
    class func comer() {
        print("Estpy comiendo")
    }
}
