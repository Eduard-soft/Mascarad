//
//  FullTableViewController.swift
//  Mascarad
//
//  Created by Эдуард on 13.11.2021.
//

import UIKit

class FullTableViewController: UITableViewController {
    
    var members = Member.getMemberList()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.rowHeight = 80
        print(members)
    }

    // MARK: - Table view data source


    override  func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        members.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "fullCell", for: indexPath)
        var content = cell.defaultContentConfiguration()
        let member = members[indexPath.row]
        
        content.text = member.name
        content.secondaryText = member.email
        content.image = UIImage(named: member.image)
        content.imageProperties.cornerRadius = tableView.rowHeight / 2
        cell.contentConfiguration = content
        
        return cell
    }

    // MARK: - Navigation

//    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
//        tableView.deselectRow(at: indexPath, animated: true)
//    }
        
        override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
            if let indexPath = tableView.indexPathForSelectedRow {
                guard let fullVC = segue.destination as? MaskViewController else { return }
                fullVC.member = members[indexPath.row]
        }
        
        }
}
