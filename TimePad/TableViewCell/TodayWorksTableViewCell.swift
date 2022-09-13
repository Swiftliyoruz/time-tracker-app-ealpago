//
//  TodayWorksTableViewCell.swift
//  TimePad
//
//  Created by Emre Alpago on 12.09.2022.
//

import UIKit

class TodayWorksTableViewCell: UITableViewCell {
    
    @IBOutlet private var mainStackView: UIStackView?
    @IBOutlet private var workTitleLabel: UILabel?
    @IBOutlet private var workCategoryLabel: UILabel?
    @IBOutlet private var personalOrWorkcategoryLabel: UILabel?
    @IBOutlet private var workTimeLabel: UILabel?
    
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
        mainStackView?.backgroundColor = UIColor.white
        workTitleLabel?.textColor = ColorConstant.shared.tableViewCellWorkTitleTextColor
        workTimeLabel?.textColor = ColorConstant.shared.tableViewWorkHourTextColor
    }
    
    func setupCellView() {
        mainStackView?.layer.masksToBounds = true
        mainStackView?.layer.cornerRadius = mainStackView!.frame.width/30.0
        mainStackView?.layer.borderWidth = 0.3
    }
}
