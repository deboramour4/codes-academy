//
//  Funcionario.swift
//  Empreiteira
//
//  Created by Ada 2018 on 18/04/2018.
//  Copyright © 2018 Academy. All rights reserved.
//

import Foundation

class Funcionario {
    var nome: String
    var fone: String
    var endereco: String
    var horas: Int
    var valor: Double

    init(nome: String, fone: String, endereco: String, horas: Int) {
        self.nome = nome
        self.fone = fone
        self.endereco = endereco
        self.horas = horas
        self.valor = 0
    }
}

