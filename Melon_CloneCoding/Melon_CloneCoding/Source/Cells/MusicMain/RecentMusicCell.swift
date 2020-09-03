//
//  RecentMusicCell.swift
//  Melon_CloneCoding
//
//  Created by Yunjae Kim on 2020/08/27.
//  Copyright © 2020 Yunjae Kim. All rights reserved.
//

import UIKit

class RecentMusicCell: UICollectionViewCell {
    
    
    static let identifier = "RecentMusicCell"
    
    var imgTitles = ["picture1","picture2","picture3","picture4","picture5","picture6",
                     "picture7","picture8","picture9"]
    
    var musicTitles = ["1","2","3","4","5","6","7","8","9"]
    var singers = ["일","이","삼","사","오","육","칠","팔","구"]
    
    
    @IBOutlet weak var RecentInnerCV: UICollectionView! {
        didSet{
            
            RecentInnerCV.delegate = self
            RecentInnerCV.dataSource = self
            
        }
        
    }
    
    
    
    
    
    
}




extension RecentMusicCell : UICollectionViewDelegate {
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        
    }
    
    
    
}

extension RecentMusicCell : UICollectionViewDelegateFlowLayout{
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: 80, height: 150)
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, insetForSectionAt section: Int) -> UIEdgeInsets {
        return UIEdgeInsets(top: 0, left: 0, bottom: 0, right: 0)
    }
    
    
    
}

extension RecentMusicCell : UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {

        
        guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: RecentMusicCVC.identifier, for: indexPath) as? RecentMusicCVC else {
            
            return UICollectionViewCell()}
        
        
        
        cell.setItems(albumImageTitle: imgTitles[indexPath.item],
                      musicTitle: musicTitles[indexPath.item], singer: singers[indexPath.item])
        
        return cell
        
        
        
        
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return musicTitles.count
    }
    
    
    
    
    
    
}



