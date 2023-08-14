//
//  ViewController.swift
//  Direct Messenger
//
//  Created by Gyeongjun Kim on 2023/08/14.
//

import UIKit
import WebKit

class ViewController: UIViewController {

    
    @IBOutlet weak var webView: WKWebView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        guard let url = URL(string: "https://m.instagram.com/direct") else {return}
        let request = URLRequest(url: url)
        webView.load(request)
    }


}

