//
//  MockHomeViewController.swift
//  TimePadTests
//
//  Created by Emre Alpago on 9.10.2022.
//

@testable import TimePad

final class MockHomeViewController: HomeViewInterface {

    var invokedSetupColor = false
    var invokedSetupColorCount = 0

    func setupColor() {
        invokedSetupColor = true
        invokedSetupColorCount += 1
    }

    var invokedSetupCardView = false
    var invokedSetupCardViewCount = 0

    func setupCardView() {
        invokedSetupCardView = true
        invokedSetupCardViewCount += 1
    }

    var invokedSetupTableView = false
    var invokedSetupTableViewCount = 0

    func setupTableView() {
        invokedSetupTableView = true
        invokedSetupTableViewCount += 1
    }

    func presentCardDetails() {

    }

    func reloadTableViewData() {

    }

    var invokedPresent = false
    var invokedPresentCount = 0
    var invokedPresentParameters: (storyboardName: String, storyboardID: String)?
    var invokedPresentParametersList = [(storyboardName: String, storyboardID: String)]()
    
    func present(name storyboardName: String, id storyboardID: String) {
         invokedPresent = true
         invokedPresentCount += 1
         invokedPresentParameters = (storyboardName: storyboardName, storyboardID: storyboardID)
        invokedPresentParametersList.append((storyboardName: storyboardName, storyboardID: storyboardID))
    }
}
