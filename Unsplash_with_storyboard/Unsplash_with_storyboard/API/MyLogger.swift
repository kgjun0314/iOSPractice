//
//  MyLogger.swift
//  Unsplash_with_storyboard
//
//  Created by Gyeongjun Kim on 2023/08/18.
//

import Foundation
import Alamofire

final class MyLogger : EventMonitor {
    let queue = DispatchQueue(label: "MyLogger")
    func requestDidResume(_ request: Request) {
        print("MyLogger - requestDidResume() called")
        debugPrint(request)
    }
    
    func request<Value>(_ request: DataRequest, didParseResponse response: DataResponse<Value, AFError>) {
        print("MyLogger - request.didParseResponse() called")
        debugPrint(response)
    }
}
