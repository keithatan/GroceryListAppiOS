//
//  ViewController.swift
//  GroceryListApp
//
//  Created by Brandon Sung on 4/1/17.
//  Copyright © 2017 KeithATan. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        self.StartScreenPhoto.image = UIImage(named: "grocery")
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBOutlet var StartScreenPhoto: UIImageView!

}

