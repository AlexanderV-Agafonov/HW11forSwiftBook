//
//  SecondTableViewController.swift
//  ContactLict
//
//  Created by Alexander Agafonov on 27.10.2023.
//

import UIKit

final class SecondTableViewController: UITableViewController {

    

}
extension SecondTableViewController {
    override func numberOfSections(in tableView: UITableView) -> Int {
        contactsList.count
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        2
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "fullContact", for: indexPath)
        
        let contact = contactsList[indexPath.section]
        
        var content = cell.defaultContentConfiguration()
        if indexPath.row == 0 {
            content.text = contact.phoneNumber
            content.image = UIImage(systemName: "phone")
        }else{
            content.text = contact.email
            content.image = UIImage(systemName: "mail")
        }
        cell.contentConfiguration = content
        
        return cell
    }
    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return  contactsList[section].person
    }
    
    override func tableView(_ tableView: UITableView, willDisplayHeaderView view: UIView, forSection section: Int) {
        view.tintColor = UIColor.lightGray
        let header = view as! UITableViewHeaderFooterView
        header.textLabel?.textColor = UIColor.black
        header.textLabel?.font = UIFont.systemFont(ofSize: 14, weight: .medium)
    }
}
