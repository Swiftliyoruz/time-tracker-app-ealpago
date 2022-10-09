//
//  HomeViewModel.swift
//  TimePad
//
//  Created by Emre Alpago on 28.09.2022.
//

import Foundation
import class UIKit.UIApplication

//MARK: - HomeViewModelInterface
protocol HomeViewModelInterface {
    var numberOfRowsInSection: Int { get }
    var heightForHeaderInSection: Double { get }

    func viewDidLoad()
    func viewWillAppear()
    func cardDetailsButtonTapped()
}

//MARK: - Constant
private extension HomeViewModel {
    enum Constant {
        static let tableViewData = 10
        static let cellSpacingHeight: Double = 16.0
        static let cardDetailsStoryBoardName = "CardDetailsStoryboard"
        static let cardDetailsStoryBoardID = "CardDetailsViewController"
    }
}

//MARK: - HomeViewModel
//internal
//public - internal - open
final class HomeViewModel {
    //will appear
    private weak var view: HomeViewInterface?

    private var taskArray: [Task]?
    private let context = (UIApplication.shared.delegate as! AppDelegate).persistentContainer.viewContext

    init(view: HomeViewInterface) {
        self.view = view
    }

    private func fetchTask() {
        do {
            self.taskArray = try context.fetch(Task.fetchRequest())
            view?.reloadTableViewData()
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
        view?.setupColor()
        view?.setupCardView()
        view?.setupTableView()
        fetchTask()
    }

    func viewWillAppear() {
        fetchTask()
    }

    func cardDetailsButtonTapped() {
      view?.preesent(name: Constant.cardDetailsStoryBoardName, id: Constant.cardDetailsStoryBoardID)
    }
}
