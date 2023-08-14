//
//  ViewController.swift
//  MyAdmobTest_swift
//
//  Created by 김경준 on 2023/08/08.
//

import UIKit
import GoogleMobileAds

class ViewController: UIViewController, GADBannerViewDelegate {

    var bannerView: GADBannerView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // 배너의 사이즈를 설정
        bannerView = GADBannerView(adSize: kGADAdSizeSmartBannerPortrait)
        
        // 광고 배너의 아이디를 설정
        bannerView.adUnitID = "ca-app-pub-3940256099942544/2934735716"
        bannerView.rootViewController = self
        
        // 광고를 로드
        bannerView.load(GADRequest())
        
        // 델리겟을 배너뷰에 연결
        bannerView.delegate = self
    }

    // 화면에 배너뷰를 추가
    func addBannerViewToView(_ bannerView: GADBannerView) {
        // 오토레이아웃으로 뷰를 설정
        bannerView.translatesAutoresizingMaskIntoConstraints = false
        // 루트뷰에 배너를 추가
        view.addSubview(bannerView)
        // 앵커를 설정하여 오토레이아웃 설정
        view.addConstraints(
          [NSLayoutConstraint(item: bannerView,
                              attribute: .bottom,
                              relatedBy: .equal,
                              toItem: view.safeAreaLayoutGuide,
                              attribute: .bottom,
                              multiplier: 1,
                              constant: 0),
           NSLayoutConstraint(item: bannerView,
                              attribute: .centerX,
                              relatedBy: .equal,
                              toItem: view,
                              attribute: .centerX,
                              multiplier: 1,
                              constant: 0)
      ])
    }

    func bannerViewDidReceiveAd(_ bannerView: GADBannerView) {
      print("bannerViewDidReceiveAd")
        // 화면에 배너뷰를 추가
        addBannerViewToView(bannerView)

    }

    func bannerView(_ bannerView: GADBannerView, didFailToReceiveAdWithError error: Error) {
      print("bannerView:didFailToReceiveAdWithError: \(error.localizedDescription)")
    }

    func bannerViewDidRecordImpression(_ bannerView: GADBannerView) {
      print("bannerViewDidRecordImpression")
    }

    func bannerViewWillPresentScreen(_ bannerView: GADBannerView) {
      print("bannerViewWillPresentScreen")
    }

    func bannerViewWillDismissScreen(_ bannerView: GADBannerView) {
      print("bannerViewWillDIsmissScreen")
    }

    func bannerViewDidDismissScreen(_ bannerView: GADBannerView) {
      print("bannerViewDidDismissScreen")
    }
}

