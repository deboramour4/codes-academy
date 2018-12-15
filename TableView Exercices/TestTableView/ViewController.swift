//
//  ViewController.swift
//  TestTableView
//
//  Created by Ada 2018 on 24/04/2018.
//  Copyright © 2018 Academy. All rights reserved.
//

import UIKit

typealias Lugar = (nome:String, foto:UIImage)

class ViewController: UIViewController {

    @IBOutlet weak var tv: UITableView!
    
    var lugares: [Lugar] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        lugares = [
            Lugar("Beach Park", UIImage.init(named:"1")!),
            Lugar("Beira Mar", UIImage.init(named:"2")!),
            Lugar("Canoa Quebrada", UIImage.init(named:"3")!),
            Lugar("Iracema", UIImage.init(named:"4")!),
            Lugar("Lagoa do Paraíso", UIImage.init(named:"5")!),
            Lugar("Mercado dos Peixes", UIImage.init(named:"6")!),
            Lugar("Mercado dos Pinhões", UIImage.init(named:"7")!),
            Lugar("Morro Branco", UIImage.init(named:"8")!),
            Lugar("Pedra Furada", UIImage.init(named:"9")!),
            Lugar("Praia do Futuro", UIImage.init(named:"10")!)
        ]
        
        tv.register(UINib(nibName: "Celula", bundle: nil), forCellReuseIdentifier: "celula")
        
        tv.delegate = self
        tv.dataSource = self
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}

extension ViewController: UITableViewDataSource, UITableViewDelegate {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return lugares.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell: CustomCellTableViewCell = tableView.dequeueReusableCell(withIdentifier: "celula") as! CustomCellTableViewCell
        print(lugares)
        cell.nomeLabel.text = lugares[indexPath.row].nome
        cell.picture.image = lugares[indexPath.row].foto
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 150.0
    }
    
    func tableView(_ tableView: UITableView, editingStyleForRowAt indexPath: IndexPath) -> UITableViewCellEditingStyle {
        return .delete
    }
    

    func tableView(_ tableView: UITableView, trailingSwipeActionsConfigurationForRowAt indexPath: IndexPath) -> UISwipeActionsConfiguration? {
        let delete = UIContextualAction(style: .normal, title: "Deletar") { (action, view, completion) in
            self.lugares.remove(at: indexPath.row)
            self.tv.deleteRows(at: [indexPath], with: .left)
            completion(false)
        }
        
        let share = UIContextualAction(style: .normal, title: "Compartilhar") { (action, view, completion) in
            print("OK")
            completion(true)
        }
        
        delete.image = UIImage(named: "trash")
        delete.backgroundColor = UIColor.red
        share.backgroundColor = UIColor.blue
        
        return UISwipeActionsConfiguration(actions: [delete, share])
    }
    
//    func tableView(_ tableView: UITableView, editActionsForRowAt indexPath: IndexPath) -> [UITableViewRowAction]? {
//        let delete = UITableViewRowAction(style: .destructive, title: "Deletar") { (action, indexPath) in
//            print("A")
//        }
//
//        let share = UITableViewRowAction(style: .normal, title: "Compartilhar") { (action, indexPath) in
//            print("B")
//        }
//
//        share.backgroundColor = UIColor.blue
//
//        return [delete, share]
//    }
}
