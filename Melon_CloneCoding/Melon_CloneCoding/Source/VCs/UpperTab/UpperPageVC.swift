//
//  UpperPageVC.swift
//  Melon_CloneCoding
//
//  Created by Yunjae Kim on 2020/08/25.
//  Copyright © 2020 Yunjae Kim. All rights reserved.
//

import UIKit

class UpperPageVC: UIPageViewController {
    
    

    let identifiers : NSArray = ["MusicMainVC", "MyTabVC", "DJTabVC"]

    lazy var VCArray : [UIViewController] = {
        return [self.VCInstane(storyboardName: "MusicMain", vcName: "MusicMainVC"),
                self.VCInstane(storyboardName: "MyTab", vcName: "MyTabVC"),
                self.VCInstane(storyboardName: "DJTab", vcName: "DJTabVC")]
        
    }()
    
    required init?(coder aDecoder: NSCoder) {
        super.init(transitionStyle: .scroll, navigationOrientation: .horizontal, options: nil)
    }
    

    override func viewDidLoad() {
        super.viewDidLoad()
        self.dataSource = self
        self.delegate = self
        
        if let firstVC = VCArray.first{
            setViewControllers([firstVC], direction: .forward, animated: true, completion: nil)
        }
        
        // Do any additional setup after loading the view.
    }
    
    private func VCInstane(storyboardName : String, vcName : String) ->UIViewController{
        return UIStoryboard(name : storyboardName, bundle : nil).instantiateViewController(withIdentifier: vcName)
        
    }
    
        
    
    
    

}



extension UpperPageVC : UIPageViewControllerDelegate, UIPageViewControllerDataSource {
    func pageViewController(_ pageViewController: UIPageViewController, viewControllerBefore viewController: UIViewController) -> UIViewController? {
        guard let vcIdx = VCArray.firstIndex(of: viewController) else {return nil}
        
        let prevIdx = vcIdx - 1
        
        guard let vcName = UIStoryboard(name: "UpperTab",
                                        bundle: nil).instantiateViewController(
                                            withIdentifier: "UpperTabVC") as? UpperTabVC
            else{
                return nil
        }
        
        if(prevIdx < 0){
            return nil
            
        }
        else{
           
//            vcName.upperTabCV.selectItem(at: cIdx, animated: true, scrollPosition: .right)
//            vcName.something()
//            vcName.upperTabCV.selectItem(at: cIdx, animated: true, scrollPosition: .left)
            
            vcName.something()
            
            return VCArray[prevIdx]
        }
        
        
    
        
        
    }
    
    func pageViewController(_ pageViewController: UIPageViewController, viewControllerAfter viewController: UIViewController) -> UIViewController? {
        guard let vcIdx = VCArray.firstIndex(of: viewController) else {return nil}
        
        let nextIdx = vcIdx + 1
        
        return nextIdx >= VCArray.count ? nil : VCArray[nextIdx]
        
        
        
    }
    
    
    
    
    
    
    
    
}
