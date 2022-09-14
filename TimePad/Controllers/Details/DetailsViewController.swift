//
//  DetailsViewController.swift
//  TimePad
//
//  Created by Emre Alpago on 10.09.2022.
//

import UIKit

class DetailsViewController: UIViewController {
    
    @IBOutlet private var projectNameLabel: UILabel?
    @IBOutlet private var firstCategoryLabel: UILabel?
    @IBOutlet private var secondCategoryLabel: UILabel?
    @IBOutlet private var projectHourLabel: UILabel?
    @IBOutlet private var pauseLabel: UILabel?
    @IBOutlet private var pauseView: UIView?
    @IBOutlet private var pauseButton: UIButton?
    @IBOutlet private var quitLabel: UILabel?
    @IBOutlet private var quitView: UIView?
    @IBOutlet private var quitButton: UIButton?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupUIColors()
    }
    
    func setupUIColors() {
        projectNameLabel?.textColor = UIColor.black
        firstCategoryLabel?.textColor = UIColor.black
        secondCategoryLabel?.textColor = UIColor.black
        projectHourLabel?.textColor = UIColor.black
        pauseLabel?.textColor = UIColor.black
        quitLabel?.textColor = UIColor.black
    }
    
}
