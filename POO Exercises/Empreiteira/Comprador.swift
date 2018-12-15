//
//  Comprador.swift
//  Empreiteira
//
//  Created by Ada 2018 on 19/04/2018.
//  Copyright © 2018 Academy. All rights reserved.
//

import Foundation

class Comprador: CustomStringConvertible{
    var apartementoComprado: Apartameto?
    var andar: Int = 0
    var nome: String
    init(nome: String) {
        self.nome = nome
    }
    var description: String {
        return "(\(nome))"
    }
}
