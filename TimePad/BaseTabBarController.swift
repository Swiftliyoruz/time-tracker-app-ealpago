//
//  ViewController.swift
//  TimePad
//
//  Created by Emre Alpago on 10.09.2022.
//
import UIKit

enum TabBarConstant {
    static let homeStoryBoardName = "HomeStoryboard"
    static let homeStoryBoardID = "HomeViewController"
    static let addStoryBoardName = "AddStoryboard"
    static let addStoryBoardID = "AddViewController"
    static let detailsStoryBoardName = "DetailsStoryboard"
    static let detailsStoryBoardID = "DetailsViewController"
}

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
        return [.home, .add, .pie]
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        setupTabBar()
        UITabBar.appearance().backgroundColor = .white
        UITabBar.appearance().tintColor = .black
    }
    func setupTabBar() {
        var viewControllers = [UIViewController]()
        items.forEach { tabbarItemType in
            var tabBarVC = UIViewController()
            switch tabbarItemType {
            case .home:
                tabBarVC = UIStoryboard(
                    name: TabBarConstant.homeStoryBoardName,
                    bundle: nil).instantiateViewController(
                        withIdentifier: TabBarConstant.homeStoryBoardID) as! HomeViewController
            case .add:
                tabBarVC = UIStoryboard(
                    name: TabBarConstant.addStoryBoardName,
                    bundle: nil).instantiateViewController(
                        withIdentifier: TabBarConstant.addStoryBoardID) as! AddViewController
            case .pie:
                tabBarVC = UIStoryboard(
                    name: TabBarConstant.detailsStoryBoardName,
                    bundle: nil).instantiateViewController(
                        withIdentifier: TabBarConstant.detailsStoryBoardID) as! DetailsViewController
            }
            let tabbarItem = UITabBarItem(title: nil,
                                          image: tabbarItemType.image,
                                          selectedImage: tabbarItemType.selectedImage)
            tabBarVC.tabBarItem = tabbarItem
            viewControllers.append(tabBarVC)
        }
        setViewControllers(viewControllers, animated: true)
    }
}
