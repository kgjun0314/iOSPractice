//
//  ViewController.swift
//  CustomPopUp
//
//  Created by 김경준 on 2023/08/12.
//

import UIKit
import WebKit

let notificationName = "btnClickNotification"

class ViewController: UIViewController, PopUpDelegate {

    @IBOutlet weak var myWebView: WKWebView!
    @IBOutlet weak var createPopUpBtn: UIButton!
    
    deinit {
        NotificationCenter.default.removeObserver(self)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        // 노티피케이션 이라는 방송 수신기를 장착한다.
        NotificationCenter.default.addObserver(self, selector: #selector(loadWebView), name: NSNotification.Name(rawValue: notificationName), object: nil)
    }
    
    @objc fileprivate func loadWebView(){
        print("ViewController - loadWebView() called")
        let musicUrl = URL(string: "https://www.instagram.com/______isu______/")
        self.myWebView.load(URLRequest(url: musicUrl!))
    }
    
    @IBAction func onCreatePopUpBtnClicked(_ sender: UIButton) {
        print("ViewController - onCreatePopUpBtnClicked() called")
        
        let storyboard = UIStoryboard.init(name: "PopUp", bundle: nil)
        let customPopUpvc = storyboard.instantiateViewController(withIdentifier: "AlertPopUpvc") as! CustomPopUpViewController
        customPopUpvc.modalPresentationStyle = .overCurrentContext
        customPopUpvc.modalTransitionStyle = .crossDissolve
        
        customPopUpvc.playBtnCompletionClosure = {
            print("Completion block called.")
            let musicUrl = URL(string: "https://www.youtube.com/watch?v=XJ-RR4T3IUo")
            self.myWebView.load(URLRequest(url: musicUrl!))
        }
        
        customPopUpvc.myPopUpDelegate = self
        
        self.present(customPopUpvc, animated: true, completion: nil)
    }
    
    //MARK: - PopUpDelegate methods
    func onHomepgBtnClicked() {
        print("ViewController - onHomepgBtnClicked() called")
        let musicUrl = URL(string: "https://325enc.com/entrance")
        self.myWebView.load(URLRequest(url: musicUrl!))
    }
}

