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
    
    var pass: String = ""
    var tel: String = ""
    //var profile = Profile()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        nameLable.text = pass
    }

    @IBAction func nameTextFieldAction(_ sender: Any) {
        saveButton.isEnabled = true
    }
    
    @IBAction func saveButtonAction(_ sender: Any) {
        print("\(pass)")
    }
}
