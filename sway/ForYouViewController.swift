//
//  ForYouViewController.swift
//  sway
//
//  Created by H.W. Hsiao on 2020/3/30.
//  Copyright © 2020 H.W. Hsiao. All rights reserved.
//

import UIKit

class ForYouViewController: UIViewController {

    @IBOutlet weak var MusicMixButton: UIButton!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        let gradientLayer = CAGradientLayer()
        gradientLayer.frame = MusicMixButton.bounds
        gradientLayer.colors = [UIColor(named: "rosyPink")!.cgColor, UIColor(named: "purpleishPink")!.cgColor]
        //MusicMixButton.layer.addSublayer(gradientLayer)
        MusicMixButton.titleEdgeInsets.left = 6
        MusicMixButton.layer.insertSublayer(gradientLayer, at: 0)
        
    }

    
    
    
    

}
