//
//  TodayWorksTableViewCell.swift
//  TimePad
//
//  Created by Emre Alpago on 12.09.2022.
//

import UIKit

class TodayWorksTableViewCell: UITableViewCell {
    
    @IBOutlet private weak var cellStackView: UIStackView!
    @IBOutlet private weak var cellTitleLabel: UILabel!
    @IBOutlet private weak var firstCategoryLabel: UILabel!
    @IBOutlet private weak var secondCategoryLabel: UILabel!
    @IBOutlet private weak var cellTimeLabel: UILabel!
    @IBOutlet private weak var firstCategoryView: UIView!
    @IBOutlet private weak var secondCategoryView: UIView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        setupColor()
        setupCellView()
    }
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }
    
    func setupColor() {
        cellStackView.backgroundColor = .white
        cellTitleLabel.textColor = .black
        cellTimeLabel.textColor = ColorConstants.cellHourColor
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
