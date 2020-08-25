//
//  UpperPageVC.swift
//  Melon_CloneCoding
//
//  Created by Yunjae Kim on 2020/08/25.
//  Copyright © 2020 Yunjae Kim. All rights reserved.
//

import UIKit

class UpperPageVC: UIPageViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        self.dataSource = self
        self.delegate = self

        // Do any additional setup after loading the view.
    }
    
    
    
    
    
    

}



extension UpperPageVC : UIPageViewControllerDelegate, UIPageViewControllerDataSource {
    func pageViewController(_ pageViewController: UIPageViewController, viewControllerBefore viewController: UIViewController) -> UIViewController? {
        <#code#>
    }
    
    func pageViewController(_ pageViewController: UIPageViewController, viewControllerAfter viewController: UIViewController) -> UIViewController? {
        <#code#>
    }
    
    
    
    
    
    
    
    
}
