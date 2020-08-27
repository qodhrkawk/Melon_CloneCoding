//
//  UpperTabCVC.swift
//  Melon_CloneCoding
//
//  Created by Yunjae Kim on 2020/08/19.
//  Copyright © 2020 Yunjae Kim. All rights reserved.
//

import UIKit

class UpperTabCVC: UICollectionViewCell {
    
    static let identifier : String = "UpperTabCell"
    
    
    @IBOutlet weak var titleLabel: UILabel!
    
    
    func setTitle(title : String){
        titleLabel.text = title
        
    }
    
    override var isSelected: Bool{
    
        willSet{
            if newValue{
                titleLabel.textColor = .softGreen
            }
            else{
                titleLabel.textColor = .gray
            }
            
        }
        
    }
    
    func setSelected(){
        titleLabel.textColor = .softGreen
        
    }
        
    
    override func prepareForReuse() {
        isSelected = false
    }
    
    override func awakeFromNib() {
        titleLabel.textColor = .gray
        
        
        
    }
    
    
    
}
