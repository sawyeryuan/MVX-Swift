//
//  YWRequestManager.swift
//  MVX-Swift
//
//  Created by dahuoshi on 04/09/2017.
//  Copyright © 2017 dahuoshi. All rights reserved.
//

import UIKit

typealias block = (_ datas: NSData)-> Void

class YWRequestManager: NSObject {
    
    static let shareManager: YWRequestManager = YWRequestManager()
    
    private override init() {
        super.init()
    }
    
    func getInfoData(completion: ((_ model: YWHeadInfoModel)->Void)) {
        let data = YWHeadInfoModel()
        data.friendCount = String(8)
        data.headImage   = "icon0"
        data.productsCount = String(3)
        data.personalInfo = "喜欢吹牛逼"
        data.userName      = "独孤九剑"
        completion(data)
    }
    
    func getBlogInfo(completion: ((_ datas: [YWBlogInfoModel])->Void)) {
        
        var arr = [YWBlogInfoModel]()
        for _ in 0...5 {
            let model: YWBlogInfoModel = YWBlogInfoModel()
            model.blogTitle = "屌丝如何逆袭"
            model.blogDigest = "讲述女屌丝如果嫁人豪门"
            model.praiseCount = String(arc4random()%20)
            model.shareCount = String(arc4random()%20)
            arr.append(model)
        }
        completion(arr)
    }
}