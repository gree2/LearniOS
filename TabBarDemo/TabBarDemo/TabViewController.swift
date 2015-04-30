//
//  ViewController.swift
//  TabBarDemo
//
//  Created by hqlgree2 on 4/30/15.
//  Copyright (c) 2015 hqlgree2. All rights reserved.
//

import UIKit


protocol TabBarHidden
{
    func isHiddenCustomTabBar(hidden: Bool)
}


class ViewController: UITabBarController, TabBarHidden {
    
    var _tabBarView: UIImageView?
    var _prevButton: TabButton?

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        tabBar.hidden = true
        let tabBarViewY = view.frame.size.height - 49
        _tabBarView = UIImageView(frame: CGRectMake(0, tabBarViewY, UIScreen.mainScreen().bounds.width, 49))
        _tabBarView?.userInteractionEnabled = true
        _tabBarView?.backgroundColor = UIColor.blackColor()
        view.addSubview(_tabBarView!)
        
        let tab1 = Tab1ViewController()
        tab1.delegate = self
        let navi1 = UINavigationController(rootViewController: tab1)
        let tab2 = Tab2ViewController()
        let navi2 = UINavigationController(rootViewController: tab2)
        let tab3 = Tab3ViewController()
        let navi3 = UINavigationController(rootViewController: tab3)
        let tab4 = Tab4ViewController()
        let navi4 = UINavigationController(rootViewController: tab4)
        
        viewControllers = NSArray(array: [navi1, navi2, navi3, navi4]) as [AnyObject]
        
        createTabButton("", selectImageName: "", title: "联系人", index: 0)
        createTabButton("", selectImageName: "", title: "产品", index: 1)
        createTabButton("", selectImageName: "", title: "信息", index: 2)
        createTabButton("", selectImageName: "", title: "设置", index: 3)
        // change to tab 1
        changeTab(_tabBarView?.subviews[0] as! TabButton)
    }

    func createTabButton(normalImageName: String, selectImageName: String, title: String, index:Int)
    {
        let button = TabButton()
        button.tag = index
        
        let buttonW = _tabBarView!.frame.size.width / 4
        let buttonH = _tabBarView!.frame.size.height
        
        button.frame = CGRectMake(CGFloat(Int(buttonW) * index), CGFloat(0), buttonW, buttonH)
        button.setImage(UIImage(named: normalImageName), forState: .Normal)
        button.setImage(UIImage(named: selectImageName), forState: .Disabled)
        button.setTitle(title, forState: .Normal)
        
        button.addTarget(self, action:"changeTab:", forControlEvents: .TouchDown)
        button.imageView?.contentMode = .Center
        button.titleLabel?.textAlignment = .Center
        button.titleLabel?.font = UIFont.systemFontOfSize(10)
        _tabBarView!.addSubview(button)
    }
    
    func changeTab(sender: TabButton)
    {
        selectedIndex = sender.tag
        sender.enabled = false
        if (_prevButton != sender)
        {
            _prevButton?.enabled = true
        }
        _prevButton = sender
        selectedViewController = viewControllers![selectedIndex] as? UIViewController
        selectedViewController?.title = sender.titleLabel?.text!
    }
    
    func isHiddenCustomTabBar(hidden: Bool)
    {
        _tabBarView?.hidden = hidden
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}

