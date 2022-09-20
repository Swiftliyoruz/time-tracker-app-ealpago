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

    override func viewDidLoad() {
        super.viewDidLoad()
    }
}
