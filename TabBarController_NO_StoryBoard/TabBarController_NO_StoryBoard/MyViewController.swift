//
//  ViewController.swift
//  TabBarController_NO_StoryBoard
//
//  Created by 김경준 on 2023/08/10.
//

import UIKit

class MyViewController: UIViewController {

    
    convenience init(title: String, bgColor: UIColor) {
        self.init()
        self.title = title
        self.view.backgroundColor = bgColor
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

