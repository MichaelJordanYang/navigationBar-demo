//
//  FirstViewController.swift
//  侧滑(navigationBar)连动demo
//
//  Created by xiaoyang on 16/6/20.
//  Copyright © 2016年 yangChunFu. All rights reserved.
//

import UIKit

class FirstViewController: JDYBaseViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        navTitle = "第一个"
        
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func onPush(sender: AnyObject) {
        let vc = SecoundViewController()
        self.navigationController?.pushViewController(vc, animated: true)
    }



}
