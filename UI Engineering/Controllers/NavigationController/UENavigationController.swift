//
//  WKNavigationController.swift
//  WineKnow
//
//  Created by Harendra Singh on 7/11/18.
//  Copyright © 2018 Harendra Singh. All rights reserved.
//

import Foundation
import UIKit
import LGSideMenuController

class UENavigationController: UINavigationController {
    
    static func createController() -> UIViewController {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        guard let mapView = storyboard.instantiateViewController(withIdentifier: "UEMapViewController") as? UEMapViewController,
            let menuController = storyboard.instantiateViewController(withIdentifier: "UEMenuViewController") as? UEMenuViewController else { return UIViewController() }
        let navigationCOntroller = UENavigationController(rootViewController: mapView)
        let sideMenuController = LGSideMenuController(rootViewController: navigationCOntroller, leftViewController: menuController, rightViewController: nil)
        sideMenuController.leftViewPresentationStyle = .slideBelow
        sideMenuController.leftViewWidth = (sideMenuController.view.frame.size.width*2)/3 + 30
        sideMenuController.willShowLeftView = { [weak menuController] (_, _) in
            
        }
        return sideMenuController
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationBar.backgroundColor = .clear
        navigationBar.barTintColor = .clear
        navigationBar.isTranslucent = true
        navigationBar.setBackgroundImage(UIImage(), for: .default)
        navigationBar.shadowImage = UIImage()
    }
    
    override var preferredStatusBarStyle: UIStatusBarStyle {
        return .lightContent
    }
    
}
