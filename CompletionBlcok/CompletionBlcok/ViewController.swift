//
//  ViewController.swift
//  CompletionBlcok
//
//  Created by 김경준 on 2023/08/08.
//

import UIKit
import KRProgressHUD

class ViewController: UIViewController {

    @IBOutlet weak var mainTitle: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        print("ViewController - viewDidLoad() called")
        
        KRProgressHUD.show()
        sayHi(completion: { result in
            print("from completion block: \(result)")
            KRProgressHUD.showSuccess()
            
            self.mainTitle.text = result
        })
    }

    fileprivate func sayHi(completion: @escaping(String) -> ()){
        print("ViewController - sayHi() called")
        DispatchQueue.main.asyncAfter(deadline: .now() + 2.0) {
            completion("Hi")
        }
    }
    
}

