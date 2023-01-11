//
//  ViewController.swift
//  LogIn
//
//  Created by Dmitriy Mukhin on 08.01.2023.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var phoneNumberField: UITextField!
    @IBOutlet weak var passwordField: UITextField!
    
    var alert = Alert(title: "Ошибка", description: "Логин или пароль введены не верно")
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func enterButtonAction(_ sender: Any) {
        let login = Login(phoneNumber: phoneNumberField.text ?? "", password: passwordField.text ?? "")
        
        ///Как сравнить 2 структуры, думаю есть какой-то еще способ?
        if login.phoneNumber == Login.correctPassword.phoneNumber && login.password == Login.correctPassword.password {
            
            //Открываем след VC
            performSegue(withIdentifier: "showProfile", sender: nil)
        } else {
            //Показываем Алерт
            self.present(alert.Show(), animated: true)
        }
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let vc = segue.destination as? ProfileViewController {
            vc.tel = phoneNumberField.text ?? ""
            vc.pass = passwordField.text ?? ""
        }
    }
}

