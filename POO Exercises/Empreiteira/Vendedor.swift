//
//  Vendedor.swift
//  Empreiteira
//
//  Created by Ada 2018 on 18/04/2018.
//  Copyright © 2018 Academy. All rights reserved.
//

import Foundation

class Vendedor: Funcionario {
    let comicao: Double = 0.05
    var aptVendidos = [Apartameto]()
    init(nome: String, fone: String, endereco: String ) {
        super.init(nome: nome, fone: fone, endereco: endereco, horas: 8 )
    }

}
