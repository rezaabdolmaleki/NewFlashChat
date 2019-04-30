//
//  VCSignUpPAGE.swift
//  NewChat
//
//  Created by reza abdolmaleki on 4/28/19.
//  Copyright © 2019 reza abdolmaleki. All rights reserved.
//

import UIKit
import FirebaseAuth

class VCSignUpPAGE: UIViewController {

    
    @IBOutlet weak var txtPassword: UITextField!
    @IBOutlet weak var txtUsername: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    @IBAction func signupAction(_ sender: UIButton) {
        Auth.auth().createUser(withEmail: txtUsername.text!, password: txtPassword.text!) { (result, error) in
            if error != nil {
                self.showAlert(messageTXT: "Error : \(error!)")
            }else {
                let alertAction = UIAlertAction(title: "GO Chat", style: .default, handler: { (alert : UIAlertAction!) in
                    self.performSegue(withIdentifier: "goToChat", sender: self)

                })
                self.showAlert(messageTXT: "UserCreate Successfully ;)",actionAlert: alertAction)
            }
        }
    }
}
