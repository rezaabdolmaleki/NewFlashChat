//
//  VCLoginPage.swift
//  NewChat
//
//  Created by reza abdolmaleki on 4/28/19.
//  Copyright © 2019 reza abdolmaleki. All rights reserved.
//

import UIKit
import FirebaseAuth
import Firebase

class VCLoginPage: UIViewController {
    @IBOutlet weak var txtUsername: UITextField!
    @IBOutlet weak var txtPassword: UITextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
   
    @IBAction func btnLogin(_ sender: UIButton) {
        Auth.auth().signIn(withEmail: txtUsername.text!, password: txtPassword.text!) { (user, error) in
            if error != nil {
                
                self.showAlert(messageTXT: "Error : \(String(describing: error))")
            }else {
                self.performSegue(withIdentifier: "goToChat", sender: self)
            }
        }
    }
    
}
