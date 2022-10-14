//
//  HomeViewController.swift
//  TimePad
//
//  Created by Emre Alpago on 10.09.2022.
//

import UIKit
import CoreData

//MARK: - HomeViewModelDelegate
protocol HomeViewInterface: AnyObject, Presentable {
    func setupColor()
    func setupCardView()
    func setupTableView()
    func presentCardDetails()
    func reloadTableViewData()
}

private extension HomeViewController {
    enum HomeVCConstant {
        static let cellNibName = "TodayWorksTableViewCell"
        static let cellReusIdentifier = "TodayWorksTableViewCell"
        static let cardDetailsStoryBoardName = "CardDetailsStoryboard"
        static let cardDetailsStoryBoardID = "CardDetailsViewController"
    }
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
    @IBOutlet private weak var cardProjectNameLabel: UILabel!

    private lazy var viewModel: HomeViewModelInterface = HomeViewModel(view: self)

    override func viewDidLoad() {
        super.viewDidLoad()
        viewModel.viewDidLoad()
    }

    override func viewWillAppear(_ animated: Bool) {
        viewModel.viewWillAppear()
    }

    @IBAction func cardDetailsButtonTapped(_ sender: UIButton) {
        viewModel.cardDetailsButtonTapped()
    }
}

// MARK: - UITableViewDelegate
extension HomeViewController: UITableViewDelegate {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        viewModel.numberOfRowsInSection
    }

    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        viewModel.heightForHeaderInSection
    }
}

// MARK: - UITableViewDataSource
extension HomeViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if let cell = tableView.dequeueReusableCell(withIdentifier: HomeVCConstant.cellReusIdentifier,for: indexPath) as? TodayWorksTableViewCell {
            return cell
        }
        return UITableViewCell()
    }
}

//MARK: - HomeViewModelDelegate
extension HomeViewController: HomeViewInterface {
    func setupTableView() {
        workTableView.dataSource = self
        workTableView.delegate = self
        workTableView.register(UINib(
            nibName: HomeVCConstant.cellNibName,
            bundle: nil),
                               forCellReuseIdentifier: HomeVCConstant.cellReusIdentifier)
    }
    
    func setupColor() {
        view.backgroundColor = ColorConstants.mainBackgrounColor
        cardView.backgroundColor = ColorConstants.timerCardColor
        taskLabel.textColor = ColorConstants.titlesColor
        cardHourLabel.textColor = .white
        cardDetailsButton.tintColor = .white
        cardProjectNameLabel.textColor = .white
        todayLabel.textColor = ColorConstants.titlesColor
        seeAllButton.tintColor = ColorConstants.titlesColor
        moreButton.tintColor = ColorConstants.moreButtonColor
    }

    func setupCardView() {
        cardView.layer.masksToBounds = true
        cardView.layer.cornerRadius = cardView.frame.width/30.0
        cardView.layer.borderWidth = 0.3
    }

    func reloadTableViewData() {
        self.workTableView.reloadData()
    }

    func presentCardDetails() {
        viewModel.cardDetailsButtonTapped()
    }
}
