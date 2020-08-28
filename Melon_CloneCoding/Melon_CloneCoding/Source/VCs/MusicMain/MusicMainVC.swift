//
//  MusicMainVC.swift
//  Melon_CloneCoding
//
//  Created by Yunjae Kim on 2020/08/25.
//  Copyright © 2020 Yunjae Kim. All rights reserved.
//

import UIKit

class MusicMainVC: UIViewController {
    
    @IBOutlet weak var musicCV: UICollectionView!
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        musicCV.delegate = self
        musicCV.dataSource = self
        
        
        
    }
    
    
    
    
    
}


extension MusicMainVC : UICollectionViewDelegate , UICollectionViewDelegateFlowLayout, UICollectionViewDataSource{
    
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 4
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 1
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        switch indexPath.section {
        case 0:
            
//            guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: RecentMusicCell.identifier, for: indexPath) as? RecentMusicCell else {
//                print("hereeeeeeeee")
//                
//                return UICollectionViewCell()
//            }
            
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "RecentMusicCell", for: indexPath) as! RecentMusicCell
            
            print("passed")
            print("passed")
            print("passed")
            print("passed")
            print("passed")
            
            
            return cell
        default:
            return UICollectionViewCell()
        }
        
        
        
        
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        
        let width = self.view.frame.width
        let height = self.view.frame.height
        
        return CGSize(width: width, height: height/4)
        
        
    }
    
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, insetForSectionAt section: Int) -> UIEdgeInsets {
        
        return UIEdgeInsets(top: 0, left: 0, bottom: 0, right: 0)
        
    }
    
    
    
    
    
    func collectionView(_ collectionView: UICollectionView, didDeselectItemAt indexPath: IndexPath) {
        
        
        
    }
    
    
    
    
    
    
    
    
}
