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
    @IBOutlet weak var secondCategoryTextField: UITextField!
    @IBOutlet weak var addButton: UIButton!

    override func viewDidLoad() {
        super.viewDidLoad()
        setupMainCategoryButton()
        setupProjectNameTextField()
    }

    func setupProjectNameTextField() {
        projectNameTextField.returnKeyType = .done
        projectNameTextField.autocapitalizationType = .words
        projectNameTextField.autocorrectionType = .no
        projectNameTextField.delegate = self
    }

    func setupMainCategoryButton() {
        let printClosure = {(action : UIAction ) in
            print(action.title)
        }

        mainCategoryButton.menu = UIMenu(children: [
            UIAction(title: MainCategories.work, handler: printClosure),
            UIAction(title: MainCategories.personal, handler: printClosure)
        ])

        mainCategoryButton.showsMenuAsPrimaryAction = true
        mainCategoryButton.changesSelectionAsPrimaryAction = true
    }
}

extension AddViewController: UITextFieldDelegate {
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        if let textFieldText = textField.text {
            print(textFieldText)
        }
        return true
    }
}
