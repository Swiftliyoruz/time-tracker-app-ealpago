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
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        setupUI()
    }
    
    
    func setupUI(){
        view.backgroundColor = ColorConstant.shared.mainBackgroundColor
        cardView?.backgroundColor = ColorConstant.shared.cardBackgroundColor
        taskLabel?.textColor = ColorConstant.shared.titleTextColor
        cardHourLabel?.textColor = ColorConstant.shared.cardHourColor
    }
}
