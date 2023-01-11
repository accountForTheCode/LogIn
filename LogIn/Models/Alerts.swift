//
//  Alert.swift
//  LogIn
//
//  Created by Dmitriy Mukhin on 09.01.2023.
//

import UIKit

class Alert {
    var title: String
    var description: String
    
    
    init(title: String, description: String) {
        self.title = title
        self.description = description
    }
    
    func Show() -> UIViewController {
        
        // create the alert
        let alert = UIAlertController(title: self.title , message: self.description, preferredStyle: UIAlertController.Style.alert)
        alert.addAction(UIAlertAction(title: "Продолжить", style: UIAlertAction.Style.default, handler: nil))
        return alert
    }
}
