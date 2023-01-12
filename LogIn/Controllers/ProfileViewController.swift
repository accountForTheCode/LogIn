//
//  ProfileViewController.swift
//  LogIn
//
//  Created by Dmitriy Mukhin on 09.01.2023.
//

import UIKit

class BaseViewController: UIViewController {
    
    
}

extension BaseViewController: Storyboarded {
    
}

protocol ProfileViewControllerDelegate: AnyObject {
    func nameUpdated(vc: ProfileViewController, name: String)
}

class ProfileViewController: BaseViewController {

    weak var delegate: ProfileViewControllerDelegate?
    
    @IBOutlet weak var nameLable: UILabel!
    @IBOutlet weak var saveButton: UIButton!
    @IBOutlet weak var nameInput: UITextField!
    @IBOutlet weak var surNameInput: UITextField!
    @IBOutlet weak var aboutInput: UITextField!
    
    var pass: String = ""
    var phone: String = ""
    
    var login: Login?
    
    private var profile:Profile?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        if let login {
            profile = Profile(login: login)
        }
        print(profile)
        delegate?.nameUpdated(vc: self, name: "JOhn")
    }
    

    @IBAction func nameTextFieldAction(_ sender: Any) {
        saveButton.isEnabled = true
    }
    
    @IBAction func saveButtonAction(_ sender: Any) {
        profile?.name = nameInput.text ?? ""
        profile?.surname = surNameInput.text ?? ""
        profile?.about = aboutInput.text ?? ""
        nameLable.text = profile?.name ?? ""
    }
}

