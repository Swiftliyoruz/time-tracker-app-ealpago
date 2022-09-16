//
//  ColorConstant.swift
//  TimePad
//
//  Created by Emre Alpago on 10.09.2022.
//

import UIKit

enum ColorConstants {
    static let mainBackgrounColor = UIColor(named: "MainAppColor")
    static let cellButtonColor = UIColor(named: "CellButtonColor")
    static let cellHourColor = UIColor(named: "CellHourColor")
    static let cellTitleTextColor = UIColor(named: "CellTitleTextColor")
    static let moreButtonColor = UIColor(named: "MoreButtonCollor")
    static let personelTagColor = UIColor(named: "PersonalTagColor")
    static let personelTextColor = UIColor(named: "PersonalTextColor")
    static let workTagColor = UIColor(named: "WorkTagColor")
    static let workTextColor = UIColor(named: "WorkTextColor")
    static let timerCardColor = UIColor(named: "TimerCardColor")
    static let timerCardLabelsColor = UIColor(named: "TimerCardLabelsColor")
    static let titlesColor = UIColor(named: "TitlesColor")
}

class ColorConstant {
    static let shared = ColorConstant()
    
    let mainBackgroundColor = UIColor(rgb: 0xFAFAFF)
    let titleTextColor = UIColor(rgb: 0x070417)
    let cardBackgroundColor = UIColor(rgb: 0x070417)
    let cardHourColor = UIColor(rgb: 0xFFFFFF)
    
    let tableViewCellWorkTitleTextColor = UIColor(rgb: 0x000000)
    let tableViewWorkHourTextColor = UIColor(rgb: 0x4F4F4F)
    
    let workCategoryViewColor = UIColor(rgb: 0xFFEFF1)
    let workCategoryLabelColor = UIColor(rgb: 0xFD5B71)
    
    let RasionProjectViewColor = UIColor(rgb: 0xF5EEFC)
    let RasionProjectLabelColor = UIColor(rgb: 0x9B51E0)
    
    let pauseAndQuitButtonsColor = UIColor(rgb: 0xE9E9FF)
}
