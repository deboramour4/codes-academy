//
//  Arquiteto.swift
//  Empreiteira
//
//  Created by Ada 2018 on 18/04/2018.
//  Copyright © 2018 Academy. All rights reserved.
//

import Foundation

class Arquiteto: Funcionario {
    let CRA: Int
    init(nome: String, fone: String, endereco: String, CRA: Int) {
        self.CRA = CRA
        super.init(nome: nome, fone: fone, endereco: endereco, horas: 8 )
    }
}
