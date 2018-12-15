//
//  ViewController.swift
//  lifeCycle
//
//  Created by Carlos Hairon Ribeiro Gonçalves on 12/11/16.
//  Copyright © 2016 Carlos Hairon Ribeiro Gonçalves. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var l1: UILabel!
    @IBOutlet weak var l2: UILabel!
    @IBOutlet weak var l3: UILabel!
    
    weak var appDelegate: AppDelegate!
    
    var timer: Timer!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        appDelegate = UIApplication.shared.delegate as! AppDelegate
        
        self.l1.text = "Inactive: \(floor(self.appDelegate.times["Inactive"]!))s"
        self.l2.text = "Active: \(floor(self.appDelegate.times["Active"]!))s"
        self.l3.text = "Background: \(floor(self.appDelegate.times["Background"]!))s"
        
        timer = Timer.scheduledTimer(withTimeInterval: 1.0, repeats: true) {_ in
            self.l1.text = "Inactive: \(floor(self.appDelegate.times["Inactive"]!))s"
            self.l2.text = "Active: \(floor(self.appDelegate.times["Active"]!))s"
            self.l3.text = "Background: \(floor(self.appDelegate.times["Background"]!))s"
        }
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

