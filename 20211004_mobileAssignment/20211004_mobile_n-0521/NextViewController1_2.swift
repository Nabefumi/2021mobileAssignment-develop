//
//  NextViewController1_2.swift
//  20211004_mobile_n-0521
//
//  Created by Takafumi Watanabe on 2021-10-04.
//

import UIKit

class NextViewController1_2: UIViewController, UITextFieldDelegate {

    @IBOutlet weak var logoImageView: UIImageView!
    
    @IBOutlet weak var emailLabel: UITextField!
    
    @IBOutlet weak var passwdLabel: UITextField!
    
    @IBOutlet weak var emailText: UILabel!
    
    @IBOutlet weak var passswdText: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        emailLabel.delegate = self
        passwdLabel.delegate = self
    }
    
    @IBAction func login(_ sender: Any) {
        logoImageView.image = UIImage(named: "loginOK")
        
        emailText.text = emailLabel.text
        passswdText.text = passwdLabel.text
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        view.endEditing(true)
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
    }
    

}
