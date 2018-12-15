//
//  Predio.swift
//  Empreiteira
//
//  Created by Ada 2018 on 18/04/2018.
//  Copyright © 2018 Academy. All rights reserved.
//

import Foundation

class Predio {
    var funcionarios = [Funcionario]()
    var andares = [Andar]()
    var precoM2: Double
    var status: Opcoes
    var historicoDeCompra = [Historico]()
    
    init(precoM2:Double) {
        self.precoM2 = precoM2
        self.status = Opcoes.planejamento
        
    }

    func addFuncionario(funcionario: Funcionario){
        funcionarios.append(funcionario)
    }
    
    func addAndar(andar: Andar){
        andares.append(andar);
        andar.posicao = (andares.count - 1)
    }
    
    func addApt(andar: Andar, apt: Apartameto){
        andar.apartamentos.append(apt);
    }
    
    func aptDisponiveis(andar: Andar){
        predioDisponivel()
        
        print("-------------------------------------\nApartamentos Disponíveis\n")
        for (index, apt) in andar.apartamentos.enumerated() {
            if apt.status == "Disponível"{
                print("Numero do apt: \(index + 1)\nÁrea do apt: \(apt.areaM2)m²\nValor: \(calculaValorApt(apt: apt, andar: andar))\n-------------------------------------\n")
            }
        }
    }
    
    func predioDisponivel(){
        var flag: Int = 0
        for i in andares{
            for j in i.apartamentos{
                if j.status == "Dísponivel"{
                    flag = 1
                }
            }
        }
        if flag == 0 {
           status = .vendido
        }
    }
    
    func calculaValorApt(apt: Apartameto,andar: Andar) -> Double {
        let valor = apt.areaM2 * precoM2
        return (valor + valor * 0.03 * Double(andar.posicao))
    }
    
    func comprarApt(andar: Int, apt: Apartameto, vendedor: Vendedor, comprador: Comprador){
        apt.status = "Vendido"
        
        vendedor.aptVendidos.append(apt);
        
        comprador.andar = andar
        comprador.apartementoComprado = apt
    }
    
    func statusSet() -> String {
        switch status{
        case .planejamento:
            return ("Predio em Planejamento")
        case .construcao:
            
            return ("Predio em Construcao")
        case .venda:
            
            return ("Predio em Venda")
        case .vendido:
            return ("Predio Vendido")
        }
    }
    
    func historico(historico: Historico){
        historicoDeCompra.append(historico)
        
    }
    func visualizarHistorico(){
        for historico in historicoDeCompra{
            print("""
                   Comprador : \(historico.compradorHistorico)
                   Andar: \(historico.andarHistorico.posicao)
                   Vendedor: \(historico.vendedoresHistorico.nome)
                """)
        }
    }
    
}
