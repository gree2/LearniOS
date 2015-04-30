//
//  Tab1ViewController.swift
//  TabBarDemo
//
//  Created by hqlgree2 on 4/30/15.
//  Copyright (c) 2015 hqlgree2. All rights reserved.
//

import UIKit

class Tab1ViewController: UIViewController {
    
    var delegate: TabBarHidden?

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        view.backgroundColor = UIColor.redColor()
        //title = "页签一"
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
