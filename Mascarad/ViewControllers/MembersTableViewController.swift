//
//  MembersTableViewController.swift
//  Mascarad
//
//  Created by Эдуард on 13.11.2021.
//

import UIKit

class MembersTableViewController: UITableViewController {
    
    var members = Member.getMemberList()
    
    //var members: [Member] = []

    // MARK: - Table view data source

//    override func numberOfSections(in tableView: UITableView) -> Int {
//        // #warning Incomplete implementation, return the number of sections
//        return 5
//    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        members.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "memberCell", for: indexPath)
        var content = cell.defaultContentConfiguration()
        let memeber = members[indexPath.row]
        
        content.text = memeber.name
        cell.contentConfiguration = content
        
        return cell
    }
   
    // MARK: - Navigation

//    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
//        if let indexPath = tableView.indexPathForSelectedRow {
//            guard let maskVs = segue.destination as? MembersTableViewController else { return }
//        }
 //   }
}
