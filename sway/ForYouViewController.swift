//
//  ForYouViewController.swift
//  sway
//
//  Created by H.W. Hsiao on 2020/3/30.
//  Copyright © 2020 H.W. Hsiao. All rights reserved.
//

import UIKit

class ForYouViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {

    
    @IBOutlet weak var MusicMixButton: UIButton!
    
    var songs = [Song(coverName: "after hours", singer: "The Weeknd", single: "In Your Eyes"), Song(coverName: "i wanna be yours", singer: "Pink Sweat$, Crush", single: "I Wanna Be Yours"), Song(coverName: "love, sex & religion", singer: "Johnta Austin", single: "Love Angel")]
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        let gradientLayer = CAGradientLayer()
        gradientLayer.frame = MusicMixButton.bounds
        gradientLayer.colors = [UIColor(named: "rosyPink")!.cgColor, UIColor(named: "purpleishPink")!.cgColor]
        //MusicMixButton.layer.addSublayer(gradientLayer)
        MusicMixButton.titleEdgeInsets.left = 6
        MusicMixButton.layer.insertSublayer(gradientLayer, at: 0)
        
    }

//    func numberOfSections(in tableView: UITableView) -> Int {
//        return 2
//    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
           return 1
       }
       
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        //因為使用自定義的cell，所以這裡要轉型成自定義的identifier(就是ForYouTableViewCell)，才可以讀取到在那裡的IBOutlet，就是coverCollection等等
        guard let RecentlyPlayedCell = tableView.dequeueReusableCell(withIdentifier: "RecentlyPlayedCell", for: indexPath) as? ForYouTableViewCell else {
            return UITableViewCell()
        }
        //沒有使用到這種方式：let song = songs[indexPath.row]
        let n = RecentlyPlayedCell.titleCollection.count - 1
        for i in 0...n {
            RecentlyPlayedCell.coverCollection[i].setBackgroundImage(UIImage(named: songs[i].coverName), for: .normal)
            RecentlyPlayedCell.titleCollection[i].text = songs[i].single
            RecentlyPlayedCell.singerCollection[i].text = songs[i].singer
        }
        return RecentlyPlayedCell
        
    }
    
    
    

}
