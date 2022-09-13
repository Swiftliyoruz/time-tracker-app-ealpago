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
    @IBOutlet private var workTableView: UITableView?
    
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
        cardView?.layer.masksToBounds = true
        cardView?.layer.cornerRadius = cardView!.frame.width/30.0
        cardView?.layer.borderWidth = 0.3
    }
    
    func setupTableView() {
        workTableView?.dataSource = self
        workTableView?.delegate = self
        workTableView?.register(UINib(nibName: TableViewConstant.shared.cellNibName, bundle: nil), forCellReuseIdentifier: TableViewConstant.shared.cellReusIdentifier)
    }
}

extension HomeViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: TableViewConstant.shared.cellReusIdentifier, for: indexPath) as! TodayWorksTableViewCell
        return cell
    }
}
