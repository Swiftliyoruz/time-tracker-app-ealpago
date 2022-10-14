//
//  DetailsViewModel.swift
//  TimePad
//
//  Created by Emre Alpago on 2.10.2022.
//

import Foundation

protocol DetailsViewModelInterface {
    var view: DetailsViewInterface? { get set }

   func viewDidLoad()
}


final class DetailsViewModel {
    weak var view: DetailsViewInterface?
}

extension DetailsViewModel: DetailsViewModelInterface {
    func viewDidLoad() {
        view?.setupUIColors()
        view?.setupButtons()
    }
}
