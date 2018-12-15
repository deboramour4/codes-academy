//
//  Engenheiro.swift
//  Empreiteira
//
//  Created by Ada 2018 on 18/04/2018.
//  Copyright © 2018 Academy. All rights reserved.
//

import Foundation

class Engenheiro: Funcionario {
    let CREA: Int
    init(nome: String, fone: String, endereco: String , CREA: Int ) {
        self.CREA = CREA
        super.init(nome: nome, fone: fone, endereco: endereco, horas: 8 )
    }
}
