//
//  DetailPersonViewController.swift
//  ContactLict
//
//  Created by Alexander Agafonov on 26.10.2023.
//

import UIKit

final class DetailPersonViewController: UIViewController {
    var personFroPrint: Contact!
    
    @IBOutlet weak var emailLabel: UILabel!
    @IBOutlet weak var phoneLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        emailLabel.text = "Email: \(personFroPrint.email ?? "None")"
        phoneLabel.text = "Phone: \(personFroPrint.phoneNumber ?? "None")"
        title = personFroPrint.person

        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
