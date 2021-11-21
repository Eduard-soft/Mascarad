//
//  FullTableViewController.swift
//  Mascarad
//
//  Created by Эдуард on 13.11.2021.
//

import UIKit

class FullTableViewController: UITableViewController {
    
    var members: [Member]!
    
    override func viewDidLoad() {
        super.viewDidLoad()
       // tableView.rowHeight = 80

    // MARK: - Table view data source


        func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        members.count
    }

        func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "fullCell", for: indexPath)
        var content = cell.defaultContentConfiguration()
        let member = members[indexPath.section]
        
        content.text = member.name
        content.secondaryText = member.email
        content.image = UIImage(named: member.image)
        content.imageProperties.cornerRadius = tableView.rowHeight / 2
        cell.contentConfiguration = content
        
//        switch indexPath.row {
//        case 0:
//            content.text = member.phoneNumber
//            content.image = UIImage(systemName: Contacts.phone.rawValue)
//        default:
            //content.text = member.email
           //content.image = UIImage(systemName: Contacts.email.rawValue)


        return cell
    }

    // MARK: - Navigation

//    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
//        tableView.deselectRow(at: indexPath, animated: true)
//    }
        
//        override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
//            if let indexPath = tableView.indexPathForSelectedRow {
//                guard let detailVC = segue.destination as? DeveloperInfoViewController else { return }
//                detailVC.developer = developers[indexPath.row]
//        }
        
        
}
    
}
