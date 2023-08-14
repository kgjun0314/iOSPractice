//
//  RegisterViewController.swift
//  NavigationViewController_tutorial
//
//  Created by 김경준 on 2023/08/07.
//

import UIKit

class RegisterViewController: UIViewController {
    @IBOutlet var btnForLoginViewController: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        self.navigationController?.isNavigationBarHidden = true
    }
    
    
    @IBAction func onLoginViewControllerCliked(_ sender: Any) {
        print("RegisterViewController - onLoginViewControlerCliked() called.")
        self.navigationController?.popViewController(animated: true)
    }
}

