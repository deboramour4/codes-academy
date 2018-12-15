//
//  main.swift
//  Empreiteira
//
//  Created by Ada 2018 on 18/04/2018.
//  Copyright © 2018 Academy. All rights reserved.
//

import Foundation

var favelaBussiness = Empreiteira()
var joseComprador = Comprador.init(nome: "José")
var mariaVendedora = Vendedor.init(nome: "Maria", fone: "66666", endereco: "rua street")

func menuPrincipal(){
    var flag = true
    while(flag){
        print("""
                --------------MENU-----------------
                1 - Iniciar construção de um predio
                2 - Vender APs
                3 - Hitórico de compra
                4 - Sair
            """)
        let response = readLine()
        switch response {
            case "1":
                print("Informe o valor do m² para o predio: ")
                guard let preco = readLine() else{
                    return
                }
                
                let predioTemp = Predio(precoM2: Double(preco)!)
                
                print("infome a quantidade de andares do prédio:")
                var quantidadeDeAndares = Int(readLine()!)!
                
                while(quantidadeDeAndares > 0){
                    let andar = Andar()
                    print("infome a quantidade de apartamentos do andar")
                    
                    var quantidadeDeApartamentos = Int(readLine()!)!
                    while(quantidadeDeApartamentos > 0){
                        
                        print("Informe os m² do apartamento")
                        let apartamento = Apartameto.init(Double(readLine()!)!)
                        andar.apartamentos.append(apartamento)
                        quantidadeDeApartamentos -= 1
                    }
                    predioTemp.addAndar(andar: andar)
                    quantidadeDeAndares -= 1
                }
                
                favelaBussiness.predios.append(predioTemp)
                print("Predio Criado")
            
                
            case "2":
                print("Ver Apartamentos disponíveis: ")
                for (index, predio) in favelaBussiness.predios.enumerated(){
                    if(favelaBussiness.predios[index].status == .venda){
                        print("O predio \(index + 1) tem:")
                        
                        for andar in predio.andares{
                            predio.aptDisponiveis(andar: andar)
                        }
                        
                    }else{
                        print("O predio \(index + 1) está em \(favelaBussiness.predios[index].status)")
                    }
                    
                }
                print("Você deseja compra saporra?\n1 - Sim 2 - Não")
                guard let opcao = readLine()else{
                    return
                }
                if (opcao == "1"){
                    print("infome o numero do predio")
                    let numeroPredio = readLine()
                    print("infome o numero do andar")
                    let numeroAndar = readLine()
                    print("infome o numero do apartamento")
                    let numeroApt = readLine()
                    
                    let predio = favelaBussiness.predios[Int(numeroPredio!)! - 1]
                    let andar = predio.andares[Int(numeroAndar!)! - 1]
                    let apartamento = andar.apartamentos[Int(numeroApt!)! - 1]
                    
                    predio.comprarApt(andar: Int(numeroAndar!)!, apt: apartamento , vendedor: mariaVendedora, comprador: joseComprador)
                    
                    let historicoPredio = Historico(andarHistorico: andar, aptHistorico: apartamento, compradorHistorico: favelaBussiness.compradores[0], vendedoresHistorico: favelaBussiness.vendedores[0])
                    
                    predio.historico(historico: historicoPredio)
                
                }else if(opcao == "2"){
                    break
                }else{
                    print("Opção inválida, tente novamente mais tarde.")
                }
            case "3":
                print("Ver o histórico")
                for predio in favelaBussiness.predios{
                    predio.visualizarHistorico()
                }
            case "4":
                flag = false
                break
            default:
                print("Digite uma opção válida")
        }
    }
}


menuPrincipal()
