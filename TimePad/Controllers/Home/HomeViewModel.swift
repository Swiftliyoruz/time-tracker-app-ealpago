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

final class HomeViewModel {

}
