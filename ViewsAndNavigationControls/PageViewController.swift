//
//  PageViewController.swift
//  ViewsAndNavigationControls
//
//  Created by Mar on 02/02/25.
//

import UIKit

class PageViewController: UIPageViewController {
    
    private var myControllers: [UIViewController] = []

    override func viewDidLoad() {
        super.viewDidLoad()

        
        let myBlueVC = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(identifier: "vcBlue")
        let myAquaVC = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(identifier: "vcAqua")
        
        myControllers.append(myBlueVC)
        myControllers.append(myAquaVC)
        
        setViewControllers([myBlueVC], direction: .forward, animated: true)
        
        dataSource = self 
        
    }

}


extension PageViewController: UIPageViewControllerDataSource {
    func pageViewController(_ pageViewController: UIPageViewController, viewControllerBefore viewController: UIViewController) -> UIViewController? {
        let index = myControllers.firstIndex(of: viewController)
        if index == 0 {
            return myControllers.last
        }
        return myControllers.first
        
    }
    
    func pageViewController(_ pageViewController: UIPageViewController, viewControllerAfter viewController: UIViewController) -> UIViewController? {
        let index = myControllers.firstIndex(of: viewController)
        if index == 0 {
            return myControllers.last
        }
        return myControllers.first
    }
    
}
