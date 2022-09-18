//
//  ViewController.swift
//  TimePad
//
//  Created by Emre Alpago on 10.09.2022.
//

import UIKit

enum TabbarItemType {
    case home, add, pie
    
    var image: UIImage {
        switch self {
        case .home:
            guard let homeImage = UIImage(named: "timeSVG") else { return UIImage(named: "wrongIcon")! }
            return homeImage
        case .add:
            guard let addImage = UIImage(named: "addSVG") else { return UIImage(named: "wrongIcon")! }
            return addImage
        case .pie:
            guard let pieImage = UIImage(named: "pieSVG") else { return UIImage(named: "wrongIcon")! }
            return pieImage
        }
    }
    
    var selectedImage: UIImage {
        switch self {
        case .home:
            guard let homeImage = UIImage(named: "selectedTimeSVG") else { return UIImage(named: "wrongIcon")! }
            return homeImage
        case .add:
            guard let addImage = UIImage(named: "selectedAddSVG") else { return UIImage(named: "wrongIcon")! }
            return addImage
        case .pie:
            guard let pieImage = UIImage(named: "selectedPieSVG") else { return UIImage(named: "wrongIcon")! }
            return pieImage
        }
    }
}


final class BaseTabBarController: UITabBarController {
    
    var items: [TabbarItemType] {
        get {
            return [.home, .add, .pie]
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupTabBar()
        UITabBar.appearance().backgroundColor = .white
        UITabBar.appearance().tintColor = .black
    }
    
    func setupTabBar() {
        var viewControllers = [UIViewController]()
        // TODO: Generic storyBoard ViewController al
        // let storyBoard = UIStoryboard(name: , bundle: nil)
        items.forEach { tabbarItemType in
            var vc = UIViewController()
            switch tabbarItemType {
            case .home:
                vc = UIStoryboard(name: "HomeStoryboard", bundle: nil).instantiateViewController(withIdentifier: "HomeViewController") as! HomeViewController
            case .add:
                vc = UIStoryboard(name: "AddStoryboard", bundle: nil).instantiateViewController(withIdentifier: "AddViewController") as! AddViewController
            case .pie:
                vc = UIStoryboard(name: "DetailsStoryboard", bundle: nil).instantiateViewController(withIdentifier: "DetailsViewController") as! DetailsViewController
            }
            let tabbarItem = UITabBarItem(title: nil, image: tabbarItemType.image, selectedImage: tabbarItemType.selectedImage)
            vc.tabBarItem = tabbarItem
            viewControllers.append(vc)
        }
        setViewControllers(viewControllers, animated: true)
    }
}

