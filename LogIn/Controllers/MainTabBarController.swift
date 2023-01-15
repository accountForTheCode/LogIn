//
//  MainTabBarController.swift
//  LogIn
//
//  Created by Anton Gubarenko on 12.01.2023.
//

import UIKit

final class MainTabBarController: UITabBarController {
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        checkLoginIfNeeded()
    }
    
    private func checkLoginIfNeeded() {
        if true {
            let loginVC = createLoginVC()
            let navVC = UINavigationController.init(rootViewController: loginVC)
            navVC.isNavigationBarHidden = false
            navVC.modalPresentationStyle = .fullScreen
            present(navVC, animated: false)
        }
    }
    
    private func createLoginVC() -> ViewController {
        let vc = ViewController.instantiate()
        return vc
    }
}
