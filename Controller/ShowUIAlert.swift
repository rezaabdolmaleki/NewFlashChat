//
//  ShowUIAlert.swift
//  NewFlashChat
//
//  Created by reza abdolmaleki on 4/28/19.
//  Copyright © 2019 reza abdolmaleki. All rights reserved.
//

import Foundation
import UIKit

extension UIViewController {
    func showAlert(messageTXT : String) -> Void {
        let alertVC = UIAlertController(title: "Alert", message: messageTXT, preferredStyle: .alert)
        let action = UIAlertAction(title: "Ok", style: .cancel, handler: nil)
        alertVC.addAction(action)
        present(alertVC,animated: true)
    }
}
