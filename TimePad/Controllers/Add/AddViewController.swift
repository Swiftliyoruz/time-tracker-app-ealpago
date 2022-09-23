//
//  AddViewController.swift
//  TimePad
//
//  Created by Emre Alpago on 10.09.2022.
//

import UIKit

enum MainCategories {
    static let work = "Work"
    static let personal = "Personal"
}

class AddViewController: UIViewController {

    @IBOutlet weak var projectNameTextField: UITextField!
    @IBOutlet weak var mainCategoryButton: UIButton!
    @IBOutlet weak var secondCategoryButton: UIButton!
    @IBOutlet weak var addButton: UIButton!

    override func viewDidLoad() {
        super.viewDidLoad()
        setupMainCategoryButton()
    }

    func setupMainCategoryButton() {
        
        let printClosure = {(action : UIAction ) in
            print(action.title)
        }

        mainCategoryButton.menu = UIMenu(children: [
            UIAction(title: MainCategories.work, handler: printClosure),
            UIAction(title: MainCategories.personal, handler: printClosure)
        ])
    }

}
