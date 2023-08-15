//
//  ViewController.swift
//  paperView
//
//  Created by Gyeongjun Kim on 2023/08/15.
//

import UIKit
import FSPagerView

class ViewController: UIViewController, FSPagerViewDataSource, FSPagerViewDelegate {

    fileprivate let imageNames = ["1.jpg", "2.jpg", "3.jpg", "4.jpg"]
    
    @IBOutlet weak var leftBtn: UIButton!
    @IBOutlet weak var rightBtn: UIButton!
    @IBOutlet weak var myPagerView: FSPagerView!{
        didSet{
            // 페이저뷰에 셀을 등록한다.
            self.myPagerView.register(FSPagerViewCell.self, forCellWithReuseIdentifier: "cell")
            // 아이템 크기 설정
            self.myPagerView.itemSize = FSPagerView.automaticSize
            // 무한스크롤 설정
            self.myPagerView.isInfinite = true
            // 자동 스크롤
            self.myPagerView.automaticSlidingInterval = 4.0
        }
    }
    @IBOutlet weak var myPageControll: FSPageControl!{
        didSet{
            self.myPageControll.numberOfPages = self.imageNames.count
            self.myPageControll.contentHorizontalAlignment = .right
            self.myPageControll.itemSpacing = 16
            self.myPageControll.interitemSpacing = 16
        }
    }
    
    
    // MARK: - IBAction
    @IBAction func onLeftBtnClicked(_ sender: UIButton) {
        print("ViewController - onLeftBtnClicked() called")
        self.myPageControll.currentPage = self.myPageControll.currentPage - 1
        self.myPagerView.scrollToItem(at: self.myPageControll.currentPage, animated: true)
    }
    
    
    @IBAction func onRightBtnClicked(_ sender: UIButton) {
        print("ViewController - onRigftBtnClicked() called")
        if(self.myPageControll.currentPage == self.imageNames.count - 1){
            self.myPageControll.currentPage = 0
        }
        else{
            self.myPageControll.currentPage = self.myPageControll.currentPage + 1
        }
        self.myPagerView.scrollToItem(at: self.myPageControll.currentPage, animated: true)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        self.myPagerView.dataSource = self
        self.myPagerView.delegate = self
        
        self.leftBtn.layer.cornerRadius = self.leftBtn.frame.height / 2;
        self.rightBtn.layer.cornerRadius = self.rightBtn.frame.height / 2;
    }

    
    // MARK: - FSPagerView Datasource
    func numberOfItems(in pagerView: FSPagerView) -> Int {
        return imageNames.count
    }
    
    // 각 셀에 대한 설정
    func pagerView(_ pagerView: FSPagerView, cellForItemAt index: Int) -> FSPagerViewCell {
        let cell = pagerView.dequeueReusableCell(withReuseIdentifier: "cell", at: index)
        cell.imageView?.image = UIImage(named: self.imageNames[index])
//        cell.textLabel?.contentMode = .scaleAspectFit
        return cell
    }
    
    // MARK: - FSPagerView delegate
    func pagerViewWillEndDragging(_ pagerView: FSPagerView, targetIndex: Int) {
        self.myPageControll.currentPage = targetIndex
    }
    
    func pagerViewDidEndScrollAnimation(_ pagerView: FSPagerView) {
        self.myPageControll.currentPage = pagerView.currentIndex
    }

    func pagerView(_ pagerView: FSPagerView, shouldHighlightItemAt index: Int) -> Bool {
        return false
    }
}

