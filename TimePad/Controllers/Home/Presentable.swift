//
//  Presentable.swift
//  TimePad
//
//  Created by Emre Alpago on 1.10.2022.
//

import UIKit

protocol Presentable {
    func preesent(name storyboardName: String, id storyboardID: String)
}

extension Presentable where Self: UIViewController {
    func preesent(name storyboardName: String, id storyboardID: String) {
        let storyboard = UIStoryboard(name: storyboardName, bundle: nil)
        let vc = storyboard.instantiateViewController(withIdentifier: storyboardID)
        present(vc, animated: true, completion: nil)
    }
}
