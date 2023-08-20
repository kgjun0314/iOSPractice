//
//  Constants.swift
//  Unsplash_with_storyboard
//
//  Created by Gyeongjun Kim on 2023/08/17.
//

import Foundation

enum SEGUE_ID {
    static let USER_LIST_VC = "goToUserListVC"
    static let PHOTO_COLLECTION_VC = "goToPhotoCollectionVC"
}

enum API {
    static let BASE_URL : String = "https://api.unsplash.com/"
    static let CLIENT_ID : String = "0gh-X_TIMOW__MP62mKeJN3iahZmIm7q80z_N362xuY"
}

enum NOTIFICATION {
    enum API {
        static let AUTH_FAIL = "authentication_fail"
    }
}
