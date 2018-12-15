//
//  Empreiteira.swift
//  Empreiteira
//
//  Created by Ada 2018 on 18/04/2018.
//  Copyright © 2018 Academy. All rights reserved.
//

import Foundation

class Empreiteira {
    var predios = [Predio]()
    var vendedores = [Vendedor]()
    var compradores = [Comprador]()
    var engenheiros = [Engenheiro]()
    var arquitetos = [Arquiteto]()
    var arquiteto = Arquiteto.init(nome: "Creusimar", fone: "707", endereco: "rua dos deuses", CRA: 465746547)
    
    func addVendedor (vendedor: Vendedor){
        vendedores.append(vendedor)
    }
    func addComprador (comprador: Comprador){
        compradores.append(comprador)
    }
    func addEngenheiro (engenheiro: Engenheiro){
        engenheiros.append(engenheiro)
    }
    func addArquiteto (arquiteto: Arquiteto){
        arquitetos.append(arquiteto)
    }
    
}
