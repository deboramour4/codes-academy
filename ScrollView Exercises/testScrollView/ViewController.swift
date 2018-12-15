//
//  ViewController.swift
//  testScrollView
//
//  Created by Ada 2018 on 23/04/2018.
//  Copyright © 2018 Academy. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIScrollViewDelegate {
    @IBOutlet weak var scroll: UIScrollView!
    @IBOutlet weak var l1: UILabel!
    @IBOutlet weak var l2: UILabel!
    @IBOutlet weak var l3: UILabel!
    @IBOutlet weak var l4: UILabel!
    @IBOutlet weak var pageControl: UIPageControl!
    
    var labels: [UILabel] = []
    var widthMainWiew: CGFloat = 0
    var heightMainWiew: CGFloat = 0
    
    var pageControlHeight: CGFloat = 0
    var old_page = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        labels = [l1,l2,l3,l4]
        
        widthMainWiew = view.bounds.width
        heightMainWiew = view.bounds.height
        
        pageControlHeight = pageControl.bounds.height

        for (index,label) in labels.enumerated(){
            let cgRect = CGRect(x: widthMainWiew * CGFloat(index), y: 0.0, width: widthMainWiew, height: heightMainWiew-pageControlHeight)
            label.frame = cgRect
            scroll.addSubview(label)
        }
        
        
        var cgRect = CGRect(x: 0.0, y: 0.0, width: widthMainWiew, height: heightMainWiew)
        scroll.frame = cgRect
        
        let cgSize = CGSize(width: widthMainWiew*CGFloat(labels.count), height: heightMainWiew-pageControlHeight)
        scroll.contentSize = cgSize
        
        
        cgRect = CGRect(x: 0.0, y: heightMainWiew - pageControlHeight, width: widthMainWiew, height: pageControlHeight)
        pageControl.frame = cgRect
        

        scroll.delegate = self
        scroll.isPagingEnabled = true
        
        pageControl.numberOfPages = labels.count
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func scrollViewDidScroll(_ scrollView: UIScrollView) {
        
        let calculo = (floor((scrollView.contentOffset.x - widthMainWiew/2)/widthMainWiew)+1)
        
        let newPage = Int(calculo)
        
        if newPage != old_page{
            pageControl.currentPage = newPage
            old_page = newPage
        }
        
    }
    
    @IBAction func clicouBotao(_ sender: UIPageControl) {
        let position = CGRect(x: widthMainWiew * CGFloat(sender.currentPage), y: 0.0, width: widthMainWiew, height: heightMainWiew-pageControlHeight)
        scroll.scrollRectToVisible(position, animated: true)

        
    }
}

