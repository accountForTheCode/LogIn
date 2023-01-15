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
        
        ///Проверка на правильность пароля
        if login == Login.correctPassword {
            //Создание экземпляра ProfileViewController
            let proVC = createProfileVC(phone: phoneNumberField.text ?? "",
                                        pass: passwordField.text ?? "", login: login)
            //Подписваем на делегат
            proVC.delegate = self
            navigationController?.pushViewController(proVC, animated: true)
        } else {
            //Показываем Алерт
            self.present(alert.Show(), animated: true)
        }
    }
    
    //MARK: - Factory pre-set
    //Прокидывание данных в след VC
    private func createProfileVC(phone: String, pass: String, login: Login) -> ProfileViewController {
        let vc = ProfileViewController.instantiate()
        vc.phone = phone
        vc.pass = pass
        vc.login = login
        return vc
    }
}

protocol ProfileViewControllerDelegate: AnyObject {
    func nameUpdated(name: String)
}

//
extension ViewController: ProfileViewControllerDelegate {
    func nameUpdated(name: String) {
        titleLable.text = name
    }
}

//Расширение чтобы работал протокол Storyboarded
extension BaseViewController: Storyboarded {
    
}

