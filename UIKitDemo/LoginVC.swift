//
//  LoginVC.swift
//  UIKitDemo
//
//  Created by wuufone on 2019/7/8.
//  Copyright © 2019 江武峯. All rights reserved.
//

import UIKit

class LoginVC: UIViewController {

    @IBOutlet weak var emailTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    
    // MARK: - 生命周期函式
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    // MARK: - IBAction 函式
    @IBAction func loginButtonAction(_ sender: UIButton) {
        guard self.emailTextField.text == "arCourse@studioa.net", self.passwordTextField.text == "123!@#" else {
            print("登入失敗")
            return
        }
        dismiss(animated: true, completion: nil)
    }
}

