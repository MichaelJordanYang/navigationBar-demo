//
//  JDYXibView.swift
//  侧滑(navigationBar)连动demo
//
//  Created by xiaoyang on 16/6/20.
//  Copyright © 2016年 yangChunFu. All rights reserved.
//

import UIKit

class JDYXibView: UIView {

 
    var view:UIView?
    
    /* 初始化方法 */
    func initFromXib()
    {
        
        //获取xib文件名称
        let  xibName = NSStringFromClass(self.classForCoder)
        let  xibClassName = xibName.characters.split{$0 == "."}.map(String.init).last
        
        //使用xib初始化一个view
        let view = NSBundle.mainBundle().loadNibNamed(xibClassName, owner: self, options: nil).first as! UIView
        view.frame = self.bounds
        view.translatesAutoresizingMaskIntoConstraints = true
        view.autoresizingMask = [.FlexibleWidth,.FlexibleHeight]
        self.addSubview(view)
        self.view = view
    }
    
    override init(frame: CGRect)
    {
        super.init(frame: frame)
        initFromXib()
    }
    
    required init(coder aDecoder: NSCoder)
    {
        super.init(coder:aDecoder)!
        initFromXib()
    }
    
    
    
    
}
