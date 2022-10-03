//
//  TodayWorksTableViewModelCell.swift
//  TimePad
//
//  Created by Emre Alpago on 3.10.2022.
//

import Foundation

protocol TodayWorksTableViewModelInterface {
    var view: TodayWorksTableViewInterface? { get set }

    func awakeFromNib()
}

final class TodayWorksTableViewModelCell {
    weak var view: TodayWorksTableViewInterface?
}

extension TodayWorksTableViewModelCell: TodayWorksTableViewModelInterface {
    func awakeFromNib() {
        view?.setupColor()
        view?.setupCellView()
    }
}
