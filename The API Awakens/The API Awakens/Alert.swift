//
//  Alert.swift
//  The API Awakens
//
//  Created by Raymond Choy on 1/3/20.
//  Copyright © 2020 thechoygroup. All rights reserved.
//

import Foundation
import UIKit

// add reusable alert functionality
extension UIViewController {
    func showAlert(title: String, message: String) {
        let alert = UIAlertController(title: title, message: message, preferredStyle: UIAlertController.Style.alert)
        alert.addAction(UIAlertAction(title: "Ok", style: .cancel, handler: nil))
        self.present(alert, animated: true, completion: nil)
    }
}
