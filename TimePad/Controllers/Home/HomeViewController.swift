//
//  HomeViewController.swift
//  TimePad
//
//  Created by Emre Alpago on 10.09.2022.
//

import UIKit

class HomeViewController: UIViewController {
    
    @IBOutlet private var taskLabel: UILabel?
    @IBOutlet private var moreButton: UIButton?
    @IBOutlet private var cardView: UIView?
    @IBOutlet private var cardHourLabel: UILabel?
    @IBOutlet private var cardDetailsButton: UIButton?
    @IBOutlet private var todayLabel: UILabel?
    @IBOutlet private var seeAllButton: UIButton?
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        setupColor()
        setupCardView()
    }
    
    func setupColor(){
        view.backgroundColor = ColorConstant.shared.mainBackgroundColor
        cardView?.backgroundColor = ColorConstant.shared.cardBackgroundColor
        taskLabel?.textColor = ColorConstant.shared.titleTextColor
        cardHourLabel?.textColor = ColorConstant.shared.cardHourColor
        todayLabel?.textColor = ColorConstant.shared.cardBackgroundColor
        seeAllButton?.tintColor = ColorConstant.shared.cardBackgroundColor
    }
    
    func setupCardView(){
        cardView?.layer.masksToBounds = true
        cardView?.layer.cornerRadius = cardView!.frame.width/30.0
        cardView?.layer.borderWidth = 0.3
    }
    
}
