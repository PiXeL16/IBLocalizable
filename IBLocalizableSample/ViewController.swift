//
//  ViewController.swift
//  IBLocalizableSample
//
//  Created by Chris Jimenez on 7/29/16.
//  Copyright © 2016 Chris Jimenez. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    let langs = ["es", "en", "zh-Hans", "fr", "zh-Hant"]
    static var cur: Int = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //programatic example
        let frame = CGRect.init(x: 100, y: 210, width: 100, height: 20)
        let l = UILabel.init("hello", frame)
        l.textAlignment = .center
        l.center.x = self.view.center.x
        
        self.view.addSubview(l)
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    @IBAction func switchLanguage(_ sender: Any) {
        ViewController.cur = (ViewController.cur + 1) % 5
        Bundle.setCustomLanguage(langs[ViewController.cur])
        
        UIApplication.shared.keyWindow?.rootViewController = UIStoryboard.init(name: "Main", bundle: nil).instantiateInitialViewController()
        UIApplication.shared.keyWindow?.alpha = 0
//        AlertHelper.showHudWithMessage(message: "Setting Language...")
        DispatchQueue.main.asyncAfter(deadline: DispatchTime.now()+1, execute: {
            UIView.animate(withDuration: 0.5, animations: {UIApplication.shared.keyWindow?.alpha = 1})
//            AlertHelper.hideHudMessage()
        })
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

