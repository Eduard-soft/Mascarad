//
//  MembersTableViewController.swift
//  Mascarad
//
//  Created by Эдуард on 13.11.2021.
//

import UIKit

class MembersTableViewController: UITableViewController {
    
    //var members = Member.getMemberList()
    
    var members = Member.getMemberList()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.rowHeight = 80
        print(members)
    }

    // MARK: - Table view data source

//    override func numberOfSections(in tableView: UITableView) -> Int {
//
//        return 5
//    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        members.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "memberCell", for: indexPath)
        var content = cell.defaultContentConfiguration()
        let member = members[indexPath.row]
        content.text = member.name
        content.secondaryText = member.phoneNumber
        cell.contentConfiguration = content
        
        return cell
    }
   
    // MARK: - Navigation
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let indexPath = tableView.indexPathForSelectedRow {
            guard let memberVC = segue.destination as? FinishViewController else { return }
            memberVC.member = members[indexPath.row]
        }
    }
}
