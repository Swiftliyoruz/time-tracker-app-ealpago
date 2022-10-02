//
//  HomeViewModel.swift
//  TimePad
//
//  Created by Emre Alpago on 28.09.2022.
//

import Foundation
import class UIKit.UIApplication

//MARK: - HomeViewModelDelegate
//move to Controller
protocol HomeViewModelDelegate: AnyObject, Presentable {
    func setupColor()
    func setupCardView()
    func setupTableView()
    func presentCardDetails()
    func reloadTableViewData()
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
//internal
//public - internal - open
final class HomeViewModel {
    //will appear
    weak var delegate: HomeViewModelDelegate?

    private var taskArray: [Task]?
    private let context = (UIApplication.shared.delegate as! AppDelegate).persistentContainer.viewContext

    private func fetchTask() {
        do {
            self.taskArray = try context.fetch(Task.fetchRequest())
            delegate?.reloadTableViewData()
        }
        catch {
            print("error")
        }
    }
}

//MARK: - HomeViewModel extensions
extension HomeViewModel: HomeViewModelInterface {
    var numberOfRowsInSection: Int {
        guard let taskCount = taskArray?.count else { return Constant.tableViewData }
        return taskCount
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
