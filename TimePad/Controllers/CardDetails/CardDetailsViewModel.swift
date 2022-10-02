//
//  CardDetailsViewModel.swift
//  TimePad
//
//  Created by Emre Alpago on 2.10.2022.
//

import Foundation

protocol CardDetailsViewModelInterface {
    var view: CardDetailsViewInterface? { get set }
    
    func viewDidLoad()
}

final class CardDetailsViewModel {
    weak var view: CardDetailsViewInterface?
}

extension CardDetailsViewModel: CardDetailsViewModelInterface {
    func viewDidLoad() {
        view?.setupUIColors()
        view?.setupButtons()
    }
}


