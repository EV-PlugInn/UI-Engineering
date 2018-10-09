//
//  UEMenuViewController.swift
//  WineKnow
//
//  Created by Harendra Singh on 7/13/18.
//  Copyright © 2018 Harendra Singh. All rights reserved.
//

import UIKit
import LGSideMenuController

class UEMenuViewController: UITableViewController {
    
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var emailLabel: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.contentInset = UIEdgeInsets(top: 20, left: 0, bottom: 0, right: 0)
        
    }
    
    override var preferredStatusBarStyle: UIStatusBarStyle {
        return .lightContent
    }
    
    @available(iOS 11.0, *)
    override func viewSafeAreaInsetsDidChange() {
        super.viewSafeAreaInsetsDidChange()
        tableView.contentInset = view.safeAreaInsets
    }
    
    @IBAction func onLogoutPress(_ sender: Any) {
        
    }
    
    @IBAction func onAboutPress(_ sender: Any) {
//        let about = WKAboutViewController.createViewController()
//        show(controller: about)
    }
    
    @IBAction func onWineDairyPress(_ sender: Any) {
//        guard let wineDairy = storyboard?.instantiateViewController(withIdentifier: "WKWineDairyViewController") else { return }
//        show(controller: wineDairy)
    }
    
    @IBAction func onEditProfilePress(_ sender: Any) {
//        guard let editProfile = storyboard?.instantiateViewController(withIdentifier: "WKEditProfileViewController") else { return }
//        show(controller: editProfile)
    }
    
    func show(controller: UIViewController) {
        self.sideMenuController?.hideLeftView()
        self.sideMenuController?.rootViewController?.show(controller, sender: nil)
    }
    

}
