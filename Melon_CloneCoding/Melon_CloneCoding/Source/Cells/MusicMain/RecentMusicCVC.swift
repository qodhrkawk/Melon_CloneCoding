//
//  ResentMusicCVC.swift
//  Melon_CloneCoding
//
//  Created by Yunjae Kim on 2020/08/27.
//  Copyright © 2020 Yunjae Kim. All rights reserved.
//

import UIKit

class RecentMusicCVC: UICollectionViewCell {
    
    static let identifier = "RecentMusicCVC"
    
    @IBOutlet weak var albumImage: UIImageView!
    @IBOutlet weak var musicTitle: UILabel!
    @IBOutlet weak var singer: UILabel!
    
    func setItems(albumImageTitle : String, musicTitle : String, singer : String){
        
        self.albumImage.image = UIImage(named: albumImageTitle)
        self.albumImage.contentMode = .scaleToFill
        self.musicTitle.text = musicTitle
        self.singer.text = singer
        
        
    }
    
    
    
    
    
}
