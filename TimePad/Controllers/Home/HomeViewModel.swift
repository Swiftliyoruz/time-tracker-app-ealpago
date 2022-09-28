//
//  HomeViewModel.swift
//  TimePad
//
//  Created by Emre Alpago on 28.09.2022.
//

import Foundation
import class UIKit.UIApplication

//MARK: - HomeViewModelDelegate
protocol HomeViewModelDelegate: AnyObject {
    func setupColor()
    func setupCardView()
    func setupTableView()
    func presentCardDetails()
}

//MARK: - HomeViewModelInterface
protocol HomeViewModelInterfaceDelegate {
    var delegate: HomeViewModelDelegate? { get set }

    var numberOfRowsInSection: Int { get }
    var heightForHeaderInSection: Double { get }

    func viewDidLoad()
    func cardDetailsButtonTapped()
}

//MARK: - Constant
private extension HomeViewModel {
    enum Constant {
        static let tableViewData = 10
        static let cellSpacingHeight: Double = 16.0
    }
}

//MARK: - HomeViewModel
final class HomeViewModel {

}
