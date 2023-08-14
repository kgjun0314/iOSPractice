//
//  CustomPopUpViewController.swift
//  CustomPopUp
//
//  Created by 김경준 on 2023/08/12.
//

import UIKit

class CustomPopUpViewController: UIViewController {
    
    @IBOutlet weak var homepgBtn: UIButton!
    @IBOutlet weak var bgBtn: UIButton!
    @IBOutlet weak var playBtn: UIButton!
    @IBOutlet weak var contentView: UIView!
    @IBOutlet weak var instaBtn: UIButton!
    
    var playBtnCompletionClosure: (() -> Void)?
    var myPopUpDelegate: PopUpDelegate?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        print("CustomPopUpViewController - viewDidLoad() called")
        contentView.layer.cornerRadius = 30
        playBtn.layer.cornerRadius = 10
        homepgBtn.layer.cornerRadius = 10
        instaBtn.layer.cornerRadius = 10
    }
    
    //MARK: - IBAction
    @IBAction func onBgBtnClicked(_ sender: UIButton) {
        print("CustomPopUpViewController - onBgBtnClicked() called")
        self.dismiss(animated: true, completion: nil)
    }
    
    
    @IBAction func onPlayBtnClicked(_ sender: UIButton) {
        print("CustomPopUpViewController - onPlayBtnClicked() called")
        self.dismiss(animated: true, completion: nil)
        
        if let playBtnCompletionClosure = playBtnCompletionClosure{
            playBtnCompletionClosure()
        }
    }
    
    @IBAction func onHomepgBtnClicked(_ sender: UIButton) {
        print("CustomPopUpViewController - onHomepgBtnClicked() called")
        myPopUpDelegate?.onHomepgBtnClicked()
        self.dismiss(animated: true, completion: nil)
    }
    
    @IBAction func onInstaBtnClicked(_ sender: UIButton) {
        print("CustomPopUpViewController - onInstaBtnClicked() called")
        NotificationCenter.default.post(name: Notification.Name(rawValue: notificationName), object: nil)
        self.dismiss(animated: true, completion: nil)
    }
    
}
