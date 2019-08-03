//
//  ViewController.swift
//  MVPLogin
//
//  Created by Maged on 8/3/19.
//  Copyright © 2019 Be Solutions - Maged Mohammed. All rights reserved.
//

import UIKit

protocol SginupView {
    func showAlert(message:String,status:Int)
}


class SginupViewController: UIViewController,SginupView {

    
    
    @IBOutlet private weak var nameTextField: UITextField!
    @IBOutlet private weak var emailTextField: UITextField!
    @IBOutlet private weak var passwordTextField: UITextField!
    
    var sginupPresenter: SginupPresnter!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        sginupPresenter = SginupPresnterImplamntation(view: self)
    }
    
    @IBAction func sginup(_ sender: UIButton) {
        guard let name = self.nameTextField.text, !name.isEmpty else{return}
        guard let email = self.emailTextField.text, !email.isEmpty else{ return }
        guard let password = self.passwordTextField.text, !password.isEmpty else{return}
        
        sginupPresenter.sginup(name: name, email: email, password: password)
    }
    
    func showAlert(message:String,status:Int) {
        let alert = UIAlertController(title: "Welcome in SwiftyCamp", message: message, preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: "Ok", style: .default, handler: nil))
        self.present(alert, animated: true)
    }
    
    
}

