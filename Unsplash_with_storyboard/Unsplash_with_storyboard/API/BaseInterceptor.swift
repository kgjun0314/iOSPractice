//
//  BaseIntercepter.swift
//  Unsplash_with_storyboard
//
//  Created by Gyeongjun Kim on 2023/08/18.
//

import Foundation
import Alamofire

class BaseInterceptor: RequestInterceptor {
    
    //
    func adapt(_ urlRequest: URLRequest, for session: Session, completion: @escaping (Result<URLRequest, Error>) -> Void) {
        print("BaseInterceptor - adpat() called")
        var request = urlRequest
        request.addValue("application/json; charset=UTF-8", forHTTPHeaderField: "Content-Type")
        request.addValue("application/json; charset=UTF-8", forHTTPHeaderField: "Accept")
        
        // 공통 파라미터 추가
        var dictionary = [String:String]()
        dictionary.updateValue(API.CLIENT_ID, forKey: "client_id")

        do{
            request = try URLEncodedFormParameterEncoder().encode(dictionary, into: request)
        }catch{
            print(error)
        }
        
        completion(.success(request))
    }
    
    func retry(_ request: Request, for session: Session, dueTo error: Error, completion: @escaping (RetryResult) -> Void) {
        print("BaseInterceptor - retry() called")
        guard let statusCode = request.response?.statusCode else {
            completion(.doNotRetry)
            return
        }
        
        let data = ["statusCode" : statusCode]
        
        NotificationCenter.default.post(name: NSNotification.Name(rawValue: NOTIFICATION.API.AUTH_FAIL), object: nil, userInfo: data)
        completion(.doNotRetry)
    }
}
