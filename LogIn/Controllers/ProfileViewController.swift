//
//  ProfileViewController.swift
//  LogIn
//
//  Created by Dmitriy Mukhin on 09.01.2023.
//

import UIKit

class ProfileViewController: UIViewController {

    @IBOutlet weak var nameLable: UILabel!
    @IBOutlet weak var saveButton: UIButton!
    @IBOutlet weak var nameInput: UITextField!
    @IBOutlet weak var surNameInput: UITextField!
    @IBOutlet weak var aboutInput: UITextField!
    
    var pass: String = ""
    var phone: String = ""
    
    var login = Login()
    var profile = Profile()
    
    ///Почему я не могу так установить значние?
    //profile.login = login


    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    

    @IBAction func nameTextFieldAction(_ sender: Any) {
        saveButton.isEnabled = true
    }
    
    @IBAction func saveButtonAction(_ sender: Any) {
        profile.name = nameInput.text ?? ""
        profile.surname = surNameInput.text ?? ""
        profile.about = aboutInput.text ?? ""
        nameLable.text = profile.name
    }
}
