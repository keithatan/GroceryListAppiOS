//
//  ViewController.swift
//  GroceryListApp
//
//  Created by Brandon Sung on 4/1/17.
//  Copyright © 2017 KeithATan. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    


    @IBOutlet weak var WelcomeImage: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
        self.WelcomeImage.image = UIImage(named: "grocery")
        
        // This is the code for blurring the main background grocery image
        // I can't seem to control the strength of the blur without the use of a private api
        
        let imageBlur = UIBlurEffect(style: UIBlurEffectStyle.regular)
        let blurView = UIVisualEffectView(effect: imageBlur)
        blurView.frame = WelcomeImage.bounds
        WelcomeImage.addSubview(blurView)
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    

}

