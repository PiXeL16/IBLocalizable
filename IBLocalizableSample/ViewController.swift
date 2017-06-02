//
//  ViewController.swift
//  IBLocalizableSample
//
//  Created by Chris Jimenez on 7/29/16.
//  Copyright © 2016 Chris Jimenez. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        //programatic example
        let frame = CGRect.init(x: 100, y: 190, width: 100, height: 20)
        let l = UILabel.init("hello", frame)
        l.textAlignment = .center
        l.center.x = self.view.center.x
        
        self.view.addSubview(l)
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

