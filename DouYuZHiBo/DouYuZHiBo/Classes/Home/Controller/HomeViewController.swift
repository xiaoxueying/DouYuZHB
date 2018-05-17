//
//  HomeViewController.swift
//  DouYuZHiBo
//
//  Created by 肖雪莹 on 10/05/2018.
//  Copyright © 2018 xiao. All rights reserved.
//

import UIKit

private let kTitleViewH : CGFloat = 40

class HomeViewController: UIViewController {

    private lazy var pageTitleView : PageTitleView = {
        let titles = ["推荐", "游戏", "娱乐", "趣玩"]
        let titleView = PageTitleView(frame: CGRect(x: 0, y: kStatusBarH + kNavigationBar, width: kScreenW, height: kTitleViewH), titles: titles)
//        titleView.backgroundColor = UIColor.purple
        return titleView
        
        
    }()
    
    private lazy var pageContentView : PageContentView = {
        let contentH = kScreenH - kStatusBarH - kNavigationBar - kTitleViewH
        let contentFrame  = CGRect(x: 0, y: kStatusBarH + kNavigationBar + kTitleViewH, width: kScreenW, height: contentH)
        
        var childVcs = [UIViewController]()
        for _ in 0..<4{
            let vc = UIViewController()
            vc.view.backgroundColor = UIColor(r: 23, g: 12, b: 45)
            childVcs.append(vc)
        }
        
        
        let contentView = PageContentView(frame: contentFrame, childVcs: childVcs, parentViewController: self)
        return contentView
    }()
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupUI()
        
    }

}
extension HomeViewController{
    private func setupUI(){
        automaticallyAdjustsScrollViewInsets = false
        setupNavigationBar()
        
        view.addSubview(pageTitleView)
        view.addSubview(pageContentView)
        pageContentView.backgroundColor = UIColor.purple
    }
    
    private func setupNavigationBar(){
  
        
        let leftItem = UIBarButtonItem(imageName: "logo")
        navigationItem.leftBarButtonItem = leftItem
        
        let size = CGSize(width: 40, height: 40)
        let historyItem = UIBarButtonItem(imageName: "image_my_history", highImageName: "Image_my_history_click", size: size)
        let searchItem = UIBarButtonItem(imageName: "btn_search", highImageName: "btn_search_clicked", size: size)
        let qrcodeItem = UIBarButtonItem(imageName: "Image_scan", highImageName: "Image_scan_click", size: size)
        
        navigationItem.rightBarButtonItems = [historyItem, searchItem, qrcodeItem]
        
    }
    
    

}

