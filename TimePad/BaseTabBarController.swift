//
//  ViewController.swift
//  TimePad
//
//  Created by Emre Alpago on 10.09.2022.
//

import UIKit

enum TabbarItemType {
    case home, add, pie
    
    func image() -> UIImage {
        switch self {
        case .home:
            return UIImage(named: "time")!
        case .add:
            return UIImage(named: "add")!
        case .pie:
            return UIImage(named: "pie")!
        }
    }
    
    func selectedImage() -> UIImage {
        switch self {
        case .home:
            return UIImage(named: "time_Selected")!
        case .add:
            return UIImage(named: "add_Selected")!
        case .pie:
            return UIImage(named: "pie_Selected")!
        }
    }
}


class BaseTabBarController: UITabBarController {
    
    var items: [TabbarItemType] {
        get {
            return [.home, .add ,.pie]
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        setupTabBar()
    }
    
    func setupTabBar() {
        var viewControllers:[UIViewController] = []
        // TODO: Generic storyBoard ViewController al
//        let storyBoard = UIStoryboard(name: , bundle: nil)
        
        items.forEach { TabbarItemType in
            var vc = UIViewController()
            switch TabbarItemType {
            case .home:
                vc = UIStoryboard(name: "HomeStoryboard", bundle: nil).instantiateViewController(withIdentifier: "HomeViewController") as! HomeViewController
            case .add:
                vc = UIStoryboard(name: "AddStoryboard", bundle: nil).instantiateViewController(withIdentifier: "AddViewController") as! AddViewController
            case .pie:
                vc = UIStoryboard(name: "DetailsStoryboard", bundle: nil).instantiateViewController(withIdentifier: "DetailsViewController") as! DetailsViewController
            }
            let tabbarItem = UITabBarItem(title: nil, image: TabbarItemType.image(), selectedImage: TabbarItemType.selectedImage())
            vc.tabBarItem = tabbarItem
            viewControllers.append(vc)
        }
        setViewControllers(viewControllers, animated: true)
    }
}
