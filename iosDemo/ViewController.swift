//
//  ViewController.swift
//  iosDemo
//
//  Created by Guest User on 20/9/2024.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
      
    }
    @IBOutlet weak var EmailTextField: UITextField!
    @IBOutlet weak var PswTextField: UITextField!
   
   
    @IBAction func ButtonLogin(_ sender: Any) {
        let alert1 = UIAlertController(title: "Alert", message: "champs obligatoires", preferredStyle: .alert)
        let alert2 = UIAlertController(title: "Alert", message: "Email incorrect", preferredStyle: .alert)
        let alertAction = UIAlertAction(title: "ok", style: .cancel,handler: nil)
        
        if (EmailTextField.text!.isEmpty || PswTextField.text!.isEmpty){
            alert1.addAction(alertAction    )
            self.present(alert1, animated :true, completion: nil)
         
            
        }else {
            print(EmailTextField.text!)
            print(PswTextField.text!)
            
        }
    }
}

