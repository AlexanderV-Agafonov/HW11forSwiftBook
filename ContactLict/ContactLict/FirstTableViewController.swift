//
//  FirstTableViewController.swift
//  ContactLict
//
//  Created by Alexander Agafonov on 25.10.2023.
//

import UIKit

class FirstTableViewController: UITableViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

    }

    
    // MARK: - Navigation

    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "showDetailsegue"{
            guard let detailVC = segue.destination as? DetailPersonViewController else {return}
            detailVC.personFroPrint = sender as? Contact
            
        }
    }
    

}
// MARK: - Table view data source
extension FirstTableViewController {
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        contactsList.count
    }


    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "contactName", for: indexPath)
        
        let contact = contactsList[indexPath.row]

        var content = cell.defaultContentConfiguration()
        content.text = contact.person
        cell.contentConfiguration = content


        return cell
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let contact = contactsList[indexPath.row]
        performSegue(withIdentifier: "showDetailsegue", sender: contact)
    }
    
}
