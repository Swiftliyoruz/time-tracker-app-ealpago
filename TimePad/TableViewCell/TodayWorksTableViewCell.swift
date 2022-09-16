//
//  TodayWorksTableViewCell.swift
//  TimePad
//
//  Created by Emre Alpago on 12.09.2022.
//

import UIKit

class TodayWorksTableViewCell: UITableViewCell {
    
    @IBOutlet private weak var mainStackView: UIStackView!
    @IBOutlet private weak var workTitleLabel: UILabel!
    @IBOutlet private weak var firstCategoryLabel: UILabel!
    @IBOutlet private weak var secondCategoryLabel: UILabel!
    @IBOutlet private weak var workTimeLabel: UILabel!
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
        // Configure the view for the selected state
    }
    
    func setupColor() {
        mainStackView.backgroundColor = UIColor.white
        workTitleLabel.textColor = ColorConstant.shared.tableViewCellWorkTitleTextColor
        workTimeLabel.textColor = ColorConstant.shared.tableViewWorkHourTextColor
        
        firstCategoryView.backgroundColor = ColorConstant.shared.workCategoryViewColor
        firstCategoryLabel.textColor = ColorConstant.shared.workCategoryLabelColor
        
        secondCategoryView.backgroundColor = ColorConstant.shared.RasionProjectViewColor
        secondCategoryLabel.textColor = ColorConstant.shared.RasionProjectLabelColor
    }
    
    func setupCellView() {
        mainStackView.layer.masksToBounds = true
        mainStackView.layer.cornerRadius = mainStackView.frame.width/30.0
        
        firstCategoryView.layer.masksToBounds = true
        firstCategoryView.layer.cornerRadius = firstCategoryView.frame.width/8.0
        
        secondCategoryView.layer.masksToBounds = true
        secondCategoryView.layer.cornerRadius = secondCategoryView.frame.width/14.0
    }
}
