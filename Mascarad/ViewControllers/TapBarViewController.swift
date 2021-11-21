//
//  TapBarViewViewController.swift
//  Mascarad
//
//  Created by Эдуард on 16.11.2021.
//

import UIKit

class TapBarViewViewController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()
        setupViewControllers()
        
    }
    
    private func setupViewControllers() {
        guard let memberVC = viewControllers?.first as? MembersTableViewController else { return }
        guard let fullVC = viewControllers?.last as? FullTableViewController else { return }
        
        let members = Member.getMemberList()
        memberVC.members = members
        fullVC.members = members
    }
}
