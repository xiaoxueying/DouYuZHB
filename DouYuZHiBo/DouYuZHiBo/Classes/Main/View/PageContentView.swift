//
//  PageContentView.swift
//  DouYuZHiBo
//
//  Created by 肖雪莹 on 16/05/2018.
//  Copyright © 2018 xiao. All rights reserved.
//

import UIKit

class PageContentView: UIView {
    fileprivate var childVcs : [UIViewController]
    fileprivate var parentViewController : UIViewController
    
//    fileprivate lazy var collectionView : UICollectionView = {
//
//        let layout = UICollectionViewFlowLayout()
//        layout.itemSize = self.bounds.size
//        layout.minimumLineSpacing = 0
//        layout.minimumInteritemSpacing = 0
//        layout.scrollDirection = .horizontal
//
//        let collectionView = UICollectionView(frame: CGRect.zero, collectionViewLayout:layout)
//        collectionView.showsHorizontalScrollIndicator = false
//        collectionView.isPagingEnabled = true
//        collectionView.bounces = false
//        collectionView.dataSource = self
//
//        return collectionView
//
//    }()

    init(frame: CGRect, childVcs : [UIViewController], parentViewController : UIViewController) {
        self.childVcs = childVcs
        self.parentViewController = parentViewController
        super.init(frame: frame)

        setupUI()
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

extension PageContentView{
    private func setupUI(){
        for childVc in childVcs {
            parentViewController.addChildViewController(childVc)
        }
        
//        addSubview(collectionView)
//        collectionView.frame = bounds
        
    }
}

//extension PageContentView : UICollectionViewDataSource{
//
//    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
//        return childVcs.count
//    }
//
//    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
//        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: <#T##String#>, for: <#T##IndexPath#>)
//
//    }
//
//}










