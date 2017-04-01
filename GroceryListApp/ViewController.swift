//
//  ViewController.swift
//  GroceryListApp
//
//  Created by Brandon Sung on 4/1/17.
//  Copyright © 2017 KeithATan. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    


    @IBOutlet weak var welcomeLabel: UIImageView!
    @IBOutlet weak var WelcomeImage: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
        self.WelcomeImage.image = UIImage(named: "grocery")
        //self.welcomeLabel.isHidden = true
        
        // * Old code for my blurred background image below *
        
        // let imageBlur = UIBlurEffect(style: UIBlurEffectStyle.regular)
        // let blurView = UIVisualEffectView(effect: imageBlur)
        // blurView.frame = WelcomeImage.bounds
        // WelcomeImage.addSubview(blurView)
        
        // New effect now animates this process: starts out clear then blurs!
        
        let effectView = UIVisualEffectView()
        effectView.frame = WelcomeImage.frame
        WelcomeImage.addSubview(effectView)
        
        UIView.animate(withDuration: 3.0) {
            effectView.effect = UIBlurEffect(style: UIBlurEffectStyle.dark)
        }
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    

}

