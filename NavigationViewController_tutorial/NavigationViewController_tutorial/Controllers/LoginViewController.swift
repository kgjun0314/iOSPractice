//
//  ViewController.swift
//  NavigationViewController_tutorial
//
//  Created by 김경준 on 2023/08/07.
//

import UIKit

class LoginViewController: UIViewController {

    @IBOutlet var loginBtn: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        self.navigationController?.isNavigationBarHidden = true
        
        loginBtn.addTarget(self, action: #selector(moveToMainViewController), for: .touchUpInside)
    }

    @objc fileprivate func moveToMainViewController(){
        print("LoginViewController - moveToMainViewController() called")
        let mainViewController = MainViewController()
        self.navigationController?.pushViewController(mainViewController, animated: true)
    }

}

