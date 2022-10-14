//
//  HomeViewModelTests.swift
//  TimePadUITests
//
//  Created by Emre Alpago on 8.10.2022.
//
import XCTest
@testable import TimePad

final class HomeViewModelTest: XCTestCase {
    private var viewModel: HomeViewModel!
    private var view: MockHomeViewController!

    override func setUp() {
        super.setUp()
        view = .init()
        viewModel = .init(view: view)
    }

    override func tearDown() {
        super.tearDown()
    }

    func test_cardDetailsButtonTapped_DidTappedcardDetailsButtonTapped() {
        XCTAssertTrue(view.invokedPresentParametersList.isEmpty)

        viewModel.cardDetailsButtonTapped()

        XCTAssertEqual(view.invokedPresentParametersList.map(\.storyboardID), ["CardDetailsViewController"])
        XCTAssertEqual(view.invokedPresentParametersList.map(\.storyboardName), ["CardDetailsStoryboard"])
    }
}
