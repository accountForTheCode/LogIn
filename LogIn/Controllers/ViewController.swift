//
//  ViewController.swift
//  LogIn
//
//  Created by Dmitriy Mukhin on 08.01.2023.
//

import UIKit

class BaseViewController: UIViewController {
    
}

class ViewController: BaseViewController {

    @IBOutlet weak var titleLable: UILabel!
    @IBOutlet weak var phoneNumberField: UITextField!
    @IBOutlet weak var passwordField: UITextField!
    
    var alert = Alert(title: "Ошибка", description: "Логин или пароль введены не верно")
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func enterButtonAction(_ sender: Any) {
        let login = Login(phoneNumber: phoneNumberField.text ?? "", password: passwordField.text ?? "")
        
        ///Как сравнить 2 структуры, думаю есть какой-то еще способ?
        if login == Login.correctPassword {
            let proVC = createProfileVC(phone: phoneNumberField.text ?? "",
                                        pass: passwordField.text ?? "", login: login)
            proVC.delegate = self
            navigationController?.pushViewController(proVC, animated: true)
        } else {
            //Показываем Алерт
            self.present(alert.Show(), animated: true)
        }
    }
    
    //MARK: - Factory pre-set
    
    private func createProfileVC(phone: String, pass: String, login: Login) -> ProfileViewController {
        let vc = ProfileViewController.instantiate()
        vc.phone = phone
        vc.pass = pass
        vc.login = login
        return vc
    }
}

extension ViewController: ProfileViewControllerDelegate {
    func nameUpdated(vc: ProfileViewController, name: String) {
        titleLable.text = name
    }
}

extension BaseViewController: Storyboarded {
    
}

