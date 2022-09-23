//
//  CardDetailsViewController.swift
//  TimePad
//
//  Created by Emre Alpago on 20.09.2022.
//

import UIKit

class CardDetailsViewController: UIViewController {
    @IBOutlet weak var secondCategoryLabel: UILabel!
    @IBOutlet weak var firstCategoryLabel: UILabel!
    @IBOutlet weak var projectNameLabel: UILabel!
    @IBOutlet weak var projectHourLabel: UILabel!
    @IBOutlet weak var pauseButton: UIButton!
    @IBOutlet weak var pauseView: UIView!
    @IBOutlet weak var quitButton: UIButton!
    @IBOutlet weak var quitView: UIView!
    @IBOutlet weak var pauseLabel: UILabel!
    @IBOutlet weak var quitLabel: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()
        setupUIColors()
        setupButtons()
    }

    func setupUIColors() {
        projectNameLabel.textColor = ColorConstants.detailsLabelColor
        firstCategoryLabel.textColor = ColorConstants.workTextColor
        secondCategoryLabel.textColor = ColorConstants.detailsLabelColor
        projectHourLabel.textColor = ColorConstants.detailsLabelColor
        pauseLabel.textColor = UIColor.black
        quitLabel.textColor = UIColor.black
        pauseView.backgroundColor = ColorConstants.pauseAndQuitButtonColor
        pauseButton.tintColor = ColorConstants.pauseAndQuitIconColor
        quitView.backgroundColor = ColorConstants.pauseAndQuitButtonColor
        quitButton.tintColor = ColorConstants.pauseAndQuitIconColor
        firstCategoryLabel.textColor = ColorConstants.workTextColor
    }
    
    func setupButtons() {
        pauseView.layer.cornerRadius = pauseView.frame.size.height / 2
        pauseView.clipsToBounds = true
        quitView.layer.cornerRadius = quitView.frame.size.height / 2
        quitView.clipsToBounds = true
    }
}
