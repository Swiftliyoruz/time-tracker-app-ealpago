//
//  HomeViewController.swift
//  TimePad
//
//  Created by Emre Alpago on 10.09.2022.
//

import UIKit

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
    
    let cellSpacingHeight: CGFloat = 16.0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        setupColor()
        setupCardView()
        setupTableView()
    }
    
    func setupColor() {
        view.backgroundColor = ColorConstant.shared.mainBackgroundColor
        cardView?.backgroundColor = ColorConstant.shared.cardBackgroundColor
        taskLabel?.textColor = ColorConstant.shared.titleTextColor
        cardHourLabel?.textColor = ColorConstant.shared.cardHourColor
        todayLabel?.textColor = ColorConstant.shared.cardBackgroundColor
        seeAllButton?.tintColor = ColorConstant.shared.cardBackgroundColor
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
        return 10
    }
    
    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return cellSpacingHeight
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: TableViewConstant.shared.cellReusIdentifier, for: indexPath) as! TodayWorksTableViewCell
        return cell
    }
}
