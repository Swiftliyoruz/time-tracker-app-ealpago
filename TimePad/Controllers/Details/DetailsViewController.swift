//
//  DetailsViewController.swift
//  TimePad
//
//  Created by Emre Alpago on 10.09.2022.
//

import UIKit

protocol DetailsViewInterface: AnyObject {
    func setupUIColors()
    func setupButtons()
}

class DetailsViewController: UIViewController {
    @IBOutlet private weak var projectNameLabel: UILabel!
    @IBOutlet private weak var firstCategoryLabel: UILabel!
    @IBOutlet private weak var secondCategoryLabel: UILabel!
    @IBOutlet private weak var projectHourLabel: UILabel!
    @IBOutlet private weak var pauseLabel: UILabel!
    @IBOutlet private weak var pauseView: UIView!
    @IBOutlet private weak var pauseButton: UIButton!
    @IBOutlet private weak var quitLabel: UILabel!
    @IBOutlet private weak var quitView: UIView!
    @IBOutlet private weak var quitButton: UIButton!

    private lazy var viewModel = DetailsViewModel()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        viewModel.view = self
        viewModel.viewDidLoad()
    }
}

extension DetailsViewController: DetailsViewInterface {
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
