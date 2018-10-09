//
//  ViewController.swift
//  Tesla
//
//  Created by Harendra Singh on 08/10/18.
//  Copyright © 2018 Harendra Singh. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        Timer.scheduledTimer(withTimeInterval: 1.0, repeats: false) { (timer) in
            let controller = UENavigationController.createController()
            self.present(controller, animated: true, completion: nil)
        }

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

