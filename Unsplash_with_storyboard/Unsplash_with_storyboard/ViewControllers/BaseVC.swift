//
//  BaseVC.swift
//  Unsplash_with_storyboard
//
//  Created by Gyeongjun Kim on 2023/08/17.
//

import UIKit

class BaseVC: UIViewController {
    
    var vcTitle: String = ""{
        didSet {
            print("UserListVC - vcTitle didSet called / vcTitle : \(vcTitle)")
            self.title = vcTitle
        }
    }
    
}
