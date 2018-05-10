//
//  UIBarButtonItem-Extension.swift
//  DouYuZHiBo
//
//  Created by 肖雪莹 on 10/05/2018.
//  Copyright © 2018 xiao. All rights reserved.
//

import UIKit
extension UIBarButtonItem{
//    class func createItem(imageName : String, highImageName : String, size : CGSize) ->UIBarButtonItem{
//        let btn = UIButton()
//        btn.setImage(UIImage(named:imageName), for: .normal)
//        btn.setImage(UIImage(named:highImageName), for: .highlighted)
//        btn.frame = CGRect(origin: CGPoint.zero, size: size)
//
//        return UIBarButtonItem(customView: btn)
//
//    }
    
    convenience init(imageName : String, highImageName : String, size : CGSize) {
        let btn = UIButton()
        btn.setImage(UIImage(named:imageName), for: .normal)
        btn.setImage(UIImage(named:highImageName), for: .highlighted)
        btn.frame = CGRect(origin: CGPoint.zero, size: size)
        self.init(customView: btn)
    }
    
}
