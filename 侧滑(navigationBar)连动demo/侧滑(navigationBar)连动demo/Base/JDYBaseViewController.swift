//
//  JDYBaseViewController.swift
//  侧滑(navigationBar)连动demo
//
//  Created by xiaoyang on 16/6/20.
//  Copyright © 2016年 yangChunFu. All rights reserved.
//

import UIKit
import SnapKit

class JDYBaseViewController: UIViewController {

    
    var navBar:JDYBaseNavBar?
    var  navTitle: String = "" {
        didSet{
            navBar?.navTitleLabel.text = navTitle
        }
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    
        navBar = JDYBaseNavBar()
        view.addSubview(navBar!)
        navBar?.snp_makeConstraints(closure: { (make) in
            make.top.left.right.equalTo(self.view)
   
            make.height.equalTo(64)
        })
        navBar?.navTitleLabel.text = navTitle
        view.bringSubviewToFront(navBar!)
    }

    

}
