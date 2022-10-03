//
//  TodayWorksTableViewCell.swift
//  TimePad
//
//  Created by Emre Alpago on 12.09.2022.
//

import UIKit

protocol TodayWorksTableViewInterface: AnyObject {
    func setupColor()
    func setupCellView()
}

class TodayWorksTableViewCell: UITableViewCell {
    @IBOutlet private weak var cellStackView: UIStackView!
    @IBOutlet private weak var cellTitleLabel: UILabel!
    @IBOutlet private weak var firstCategoryLabel: UILabel!
    @IBOutlet private weak var secondCategoryLabel: UILabel!
    @IBOutlet private weak var cellTimeLabel: UILabel!
    @IBOutlet private weak var firstCategoryView: UIView!
    @IBOutlet private weak var secondCategoryView: UIView!
    @IBOutlet private weak var cellButton: UIButton!

    private lazy var viewModel: TodayWorksTableViewModelInterface = TodayWorksTableViewModelCell()

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        viewModel.view = self
        viewModel.awakeFromNib()
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }
}

extension TodayWorksTableViewCell: TodayWorksTableViewInterface {
    func setupColor() {
        cellStackView.backgroundColor = .white
        cellTitleLabel.textColor = .black
        cellTimeLabel.textColor = ColorConstants.cellHourAndButtonColor
        cellButton.tintColor = ColorConstants.cellHourAndButtonColor
        firstCategoryView.backgroundColor = ColorConstants.workTagColor
        firstCategoryLabel.textColor = ColorConstants.workTextColor
        secondCategoryView.backgroundColor = ColorConstants.cellProjectTagColor
        secondCategoryLabel.textColor = ColorConstants.cellProjectTextColor
    }

    func setupCellView() {
        cellStackView.layer.masksToBounds = true
        cellStackView.layer.cornerRadius = cellStackView.frame.width/30.0
        firstCategoryView.layer.masksToBounds = true
        firstCategoryView.layer.cornerRadius = firstCategoryView.frame.width/8.0
        secondCategoryView.layer.masksToBounds = true
        secondCategoryView.layer.cornerRadius = secondCategoryView.frame.width/14.0
    }
}
