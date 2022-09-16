//
//  HomeViewController.swift
//  TimePad
//
//  Created by Emre Alpago on 10.09.2022.
//

import UIKit

enum Constant {
    static let tableViewData = 10
    static let cellSpacingHeight: CGFloat = 16.0
}

class HomeViewController: UIViewController {
    
    @IBOutlet private weak var taskLabel: UILabel!
    @IBOutlet private weak var moreButton: UIButton!
    @IBOutlet private weak var cardView: UIView!
    @IBOutlet private weak var cardHourLabel: UILabel!
    @IBOutlet private weak var cardDetailsButton: UIButton!
    @IBOutlet private weak var todayLabel: UILabel!
    @IBOutlet private weak var seeAllButton: UIButton!
    @IBOutlet private weak var workTableView: UITableView!
    @IBOutlet private weak var cardButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        setupColor()
        setupCardView()
        setupTableView()
    }
    
    func setupColor() {
        view.backgroundColor = ColorConstants.mainBackgrounColor
        cardView.backgroundColor = ColorConstants.timerCardColor
        taskLabel.textColor = ColorConstants.titlesColor
        cardHourLabel.textColor = ColorConstants.timerCardLabelsColor
        todayLabel.textColor = ColorConstants.titlesColor
        seeAllButton.tintColor = ColorConstants.titlesColor
        moreButton.tintColor = ColorConstants.moreButtonColor
    }
    
    func setupCardView() {
        cardView.layer.masksToBounds = true
        cardView.layer.cornerRadius = cardView.frame.width/30.0
        cardView.layer.borderWidth = 0.3
    }
    
    func setupTableView() {
        workTableView.dataSource = self
        workTableView.delegate = self
        workTableView.register(UINib(nibName: TableViewConstant.shared.cellNibName, bundle: nil), forCellReuseIdentifier: TableViewConstant.shared.cellReusIdentifier)
    }
    
    @IBAction func cardButtonTapped(_ sender: UIButton) {
        print("tapped")
    }
}

extension HomeViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        Constant.tableViewData
    }
    
    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        Constant.cellSpacingHeight
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: TableViewConstant.shared.cellReusIdentifier, for: indexPath) as! TodayWorksTableViewCell
        return cell
    }
}
