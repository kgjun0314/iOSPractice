//
//  MainViewController.swift
//  NavigationViewController_tutorial
//
//  Created by 김경준 on 2023/08/08.
//

import UIKit

class MainViewController: UIViewController {
    
    var titleLabel: UILabel = {
        let label = UILabel()
        
        label.text = "Main View"
        label.textAlignment = .center
        label.font = UIFont.boldSystemFont(ofSize: 50)
        label.textColor = UIColor.white
        
        return label
    }()
    
    let changeBtn: UIButton = {
        let btn = UIButton(type: .system)
        btn.setTitle("Change BGC", for: .normal)
        btn.setTitleColor(.black, for: .normal)
        btn.titleLabel?.font = UIFont.boldSystemFont(ofSize: 20)
        btn.backgroundColor = UIColor.white
        btn.layer.cornerRadius = 5
        btn.contentEdgeInsets = UIEdgeInsets(top: 5, left: 20, bottom: 5, right: 20)
        btn.addTarget(self, action: #selector(changeBg), for: .touchUpInside)
        
        return btn
    }()
    
    var isBgBlack: Bool?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        isBgBlack = true
        
        view.backgroundColor = UIColor.black
        view.addSubview(titleLabel)
        
        titleLabel.translatesAutoresizingMaskIntoConstraints = false
        titleLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        titleLabel.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
        
        view.addSubview(changeBtn)
        
        changeBtn.translatesAutoresizingMaskIntoConstraints = false
        changeBtn.topAnchor.constraint(equalTo: titleLabel.bottomAnchor, constant: 20).isActive = true
        changeBtn.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
    }
    
    @objc fileprivate func changeBg(){
        if isBgBlack == true{
            view.backgroundColor = UIColor.blue
            isBgBlack = false
        }else{
            view.backgroundColor = UIColor.black
            isBgBlack = true
        }
        print("MainViewController - changeBg() called / isBgBlack = \(isBgBlack)")
    }
}
