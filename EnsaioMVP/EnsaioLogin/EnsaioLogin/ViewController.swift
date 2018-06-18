//
//  ViewController.swift
//  EnsaioLogin
//
//  Created by Tecnologia on 18/06/2018.
//  Copyright © 2018 Tecnologia. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var userName: UITextField!
    @IBOutlet weak var passWord: UITextField!
    
    let userPresenter = UserPresenter()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        userPresenter.attachView(view: self)
        passWord.isSecureTextEntry = true
    }

    @IBAction func loginAction(_ sender: UIButton) {
        userPresenter.loginAction(userName: userName.text!, passWord: passWord.text!)
    }
    
}

extension ViewController: UserView{
    func startLoading() {
        print("StartLoading")
    }
    
    func finishingLoading() {
        print("Finish Loading")
    }
    
    func setUser(user: UserViewData) {
        userName.text = user.login
        passWord.text = user.password
    }
    
    func showAlert(message: String) {
        print("Show Alert!: \(message)")
    }
    
    func segueListMovie() {
        print("Go to Movie")
    }
    
    func signUp() {
        print("Go to signUpView")
    }
    
}
