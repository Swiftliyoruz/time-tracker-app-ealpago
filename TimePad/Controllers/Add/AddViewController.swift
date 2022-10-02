//
//  AddViewController.swift
//  TimePad
//
//  Created by Emre Alpago on 10.09.2022.
//

import UIKit
import CoreData

enum MainCategories {
    static let work = "Work"
    static let personal = "Personal"
}

protocol AddViewInterface: AnyObject {
    func setupMainCategoryButton()
    func setupProjectNameTextField()
    func setupSecondCategoryTextField()
    func addNewTask()
}

class AddViewController: UIViewController {

    @IBOutlet weak var projectNameTextField: UITextField!
    @IBOutlet weak var mainCategoryButton: UIButton!
    @IBOutlet weak var secondCategoryTextField: UITextField!
    @IBOutlet weak var addButton: UIButton!

    private lazy var viewModel = AddViewModel()

    let context = (UIApplication.shared.delegate as! AppDelegate).persistentContainer.viewContext

    override func viewDidLoad() {
        super.viewDidLoad()
        //move to AddViewInterface protocol
        viewModel.view = self
        viewModel.viewDidLoad()
    }

    @IBAction func addButtonTapped(_ sender: UIButton) {
        viewModel.addButtonTapped()
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

extension AddViewController: AddViewInterface {
    func setupSecondCategoryTextField() {
        secondCategoryTextField.returnKeyType = .done
        secondCategoryTextField.autocapitalizationType = .words
        secondCategoryTextField.autocorrectionType = .no
        secondCategoryTextField.delegate = self
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

    func setupProjectNameTextField() {
        projectNameTextField.returnKeyType = .done
        projectNameTextField.autocapitalizationType = .words
        projectNameTextField.autocorrectionType = .no
        projectNameTextField.delegate = self
    }

    func addNewTask() {
        let newTask = Task(context: self.context)

        newTask.projectLabel = projectNameTextField.text
        newTask.secondCategory = secondCategoryTextField.text
        newTask.mainCategory = mainCategoryButton.currentTitle

        do {
            try self.context.save()
        }
        catch {
        }
        print(newTask.self)
    }
}
