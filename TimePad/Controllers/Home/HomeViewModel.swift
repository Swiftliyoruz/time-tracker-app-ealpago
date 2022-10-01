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
protocol HomeViewModelInterface {
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
    weak var delegate: HomeViewModelDelegate?

    var taskArray: [Task]?
    let context = (UIApplication.shared.delegate as! AppDelegate).persistentContainer.viewContext

    func fetchTask() {
        do {
            self.taskArray = try context.fetch(Task.fetchRequest())
        }
        catch {
            print("error")
        }
    }
}

//MARK: - HomeViewModel extensions
extension HomeViewModel: HomeViewModelInterface {
    var numberOfRowsInSection: Int {
        Constant.tableViewData
    }

    var heightForHeaderInSection: Double {
        Constant.cellSpacingHeight
    }

    func viewDidLoad() {
        delegate?.setupColor()
        delegate?.setupCardView()
        delegate?.setupTableView()
        fetchTask()
    }

    func cardDetailsButtonTapped() {
        delegate?.presentCardDetails()
    }
}
