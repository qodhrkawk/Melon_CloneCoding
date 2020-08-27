//
//  MainViewVC.swift
//  Melon_CloneCoding
//
//  Created by Yunjae Kim on 2020/08/13.
//  Copyright © 2020 Yunjae Kim. All rights reserved.
//

import UIKit

class UpperTabVC: UIViewController {
    
    
    let tabTitles = ["뮤직" , "MY", "DJ"]
    
    @IBOutlet weak var upperTabCV: UICollectionView!
    @IBOutlet weak var containPage: UIView!
    var pageInstance : UpperPageVC?
    
    var nowIdx = 0
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        upperTabCV.delegate = self
        upperTabCV.dataSource = self
        upperTabCV.reloadData()
        
        let firstIndexPath = IndexPath(item : 0, section : 0)
        collectionView(upperTabCV, didSelectItemAt: firstIndexPath)
        upperTabCV.selectItem(at: firstIndexPath, animated: false, scrollPosition: .right)
        
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "pageSegue"{
            pageInstance = segue.destination as? UpperPageVC
        }
        pageInstance?.cvcDelegate = self
        
    }
    
    func something(){
        let secondIndexPath = IndexPath(item : 1, section : 0)
        upperTabCV.selectItem(at: secondIndexPath, animated: true, scrollPosition: .right)
    }
    
    
    
}


extension UpperTabVC : UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int)
        -> Int {
            return tabTitles.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath)
        -> UICollectionViewCell {
            guard let titleCell = collectionView.dequeueReusableCell(
                withReuseIdentifier: UpperTabCVC.identifier,
                for: indexPath) as? UpperTabCVC else {
                    
                    return UICollectionViewCell()}
            
            titleCell.setTitle(title: tabTitles[indexPath.item])
           
            
            return titleCell
    }
    
    func collectionView(_ collectionView: UICollectionView,
                        layout collectionViewLayout: UICollectionViewLayout,
                        sizeForItemAt indexPath: IndexPath) -> CGSize {
        
        return CGSize(width : 100, height: 50 )
    }
    func collectionView(_ collectionView: UICollectionView,
                        layout collectionViewLayout: UICollectionViewLayout,
                        insetForSectionAt section: Int) -> UIEdgeInsets {
        return UIEdgeInsets(top: 0, left: 0, bottom: 0, right: 0)
    }
    
    func collectionView(_ collectionView: UICollectionView,
                        layout collectionViewLayout: UICollectionViewLayout,
                        minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        return 0
    }
    
    func collectionView(_ collectionView: UICollectionView,
                        layout collectionViewLayout: UICollectionViewLayout,
                        minimumInteritemSpacingForSectionAt section: Int) -> CGFloat {
        return 10
    }
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        
        
       guard let titleCell = collectionView.dequeueReusableCell(
       withReuseIdentifier: UpperTabCVC.identifier,
       for: indexPath) as? UpperTabCVC else {
           
           return }

        titleCell.isSelected = true
        titleCell.setSelected()
        if(nowIdx < indexPath.item){
            pageInstance?.setViewControllers([(pageInstance?.VCArray[indexPath.item])!], direction: .forward,
            animated: true, completion: nil)
            print("here1")
        }
        else if (nowIdx > indexPath.item){
            pageInstance?.setViewControllers([(pageInstance?.VCArray[indexPath.item])!], direction: .reverse,
            animated: true, completion: nil)
            print("here2")
        }
        nowIdx = indexPath.item
        
        
        
        
    }
    
    
}

extension UpperTabVC : SelectCVCDelegate {
    
    func setCVC(index : Int) {
        let myIndexPath = IndexPath(item : index, section : 0)
//        collectionView(upperTabCV, didSelectItemAt: firstIndexPath)
        print(index)
        upperTabCV.selectItem(at: myIndexPath, animated: false, scrollPosition: .right)

    }
    
}
