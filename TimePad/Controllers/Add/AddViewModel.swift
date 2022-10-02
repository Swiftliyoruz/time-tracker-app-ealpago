//
//  AddViewModel.swift
//  TimePad
//
//  Created by Emre Alpago on 2.10.2022.
//

import Foundation
import class UIKit.UIApplication

protocol AddViewModelInterface {
    var view: AddViewInterface? { get set }

    func viewDidLoad()
    func addButtonTapped()
}

final class AddViewModel {
    weak var view: AddViewInterface?

    let context = (UIApplication.shared.delegate as! AppDelegate).persistentContainer.viewContext
}

extension AddViewModel: AddViewModelInterface {
    func viewDidLoad() {
        view?.setupMainCategoryButton()
        view?.setupProjectNameTextField()
        view?.setupSecondCategoryTextField()
    }

    func addButtonTapped() {
        view?.addNewTask()
    }
}
