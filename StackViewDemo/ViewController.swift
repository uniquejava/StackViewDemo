//
//  ViewController.swift
//  StackViewDemo
//
//  Created by cyper on 27/10/2016.
//  Copyright © 2016 cyper tech. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var myStackView: UIStackView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        if UIApplication.shared.statusBarOrientation.isPortrait {
            myStackView.spacing = CGFloat(30.0)
        }
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    


}

