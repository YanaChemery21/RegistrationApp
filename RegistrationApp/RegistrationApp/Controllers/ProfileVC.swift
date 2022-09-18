//
//  ProfileVC.swift
//  RegistrationApp
//
//  Created by air on 28.08.22.
//

import UIKit

class ProfileVC: UIViewController {
    
    
    @IBOutlet weak var emailLbl: UILabel!
    
    @IBOutlet weak var nameLbl: UILabel!
    
    @IBOutlet weak var passwordLbl: UILabel!
    
    @IBAction func logOutAction(_ sender: Any) {
        navigationController?.popToRootViewController(animated: true)
    }
    
    @IBAction func deleteAccountAction() {
        userDefaultsService.cleanUserDefaults()
        navigationController?.popToRootViewController(animated: true)
    }
    override func viewDidLoad() {
       super.viewDidLoad()
        setupUI()
    }
    private func setupUI() {
            let email = UserDefaults.standard.string(forKey: "email")
            emailLbl.text = email
            let name = UserDefaults.standard.string(forKey: "name")
            nameLbl.text = name
            let pass = UserDefaults.standard.string(forKey: "password")
            passwordLbl.text = pass
        }
}
