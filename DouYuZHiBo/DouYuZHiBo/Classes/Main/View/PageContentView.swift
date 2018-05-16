//
//  PageContentView.swift
//  DouYuZHiBo
//
//  Created by 肖雪莹 on 16/05/2018.
//  Copyright © 2018 xiao. All rights reserved.
//

import UIKit

class PageContentView: UIView {
    fileprivate  var childVcs : [UIViewController]
    fileprivate  var parentViewController : UIViewController

    init(frame: CGRect, childVcs : [UIViewController], parentViewController : UIViewController) {
        self.childVcs = childVcs
        self.parentViewController = parentViewController
        super.init(frame: frame)

        
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
