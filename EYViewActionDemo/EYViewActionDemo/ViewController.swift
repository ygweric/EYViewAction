//
//  ViewController.swift
//  EYViewActionDemo
//
//  Created by eric on 3/07/17.
//  Copyright © 2017 Eric. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var label: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        label.addTarget(self, action: #selector(actionClick(_:)))
    }
    
    @objc func actionClick(_ sender: UIView) {
        print("actionClick")
    }
}

