//
//  ViewController.swift
//  侧滑(navigationBar)连动demo
//
//  Created by xiaoyang on 16/6/20.
//  Copyright © 2016年 yangChunFu. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBAction func onShow(sender: AnyObject) {
        
        let vc = FirstViewController(nibName: "FirstViewController", bundle: nil)
        
        let  nav  = UINavigationController(rootViewController: vc)
        
        nav.navigationBarHidden = true
        
        self.presentViewController(nav, animated: true, completion: nil)
        
        
    }

}

