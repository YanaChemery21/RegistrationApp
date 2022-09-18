//
//  WelcomeVC.swift
//  RegistrationApp
//
//  Created by air on 15.08.22.
//

import UIKit

final class WelcomeVC: UIViewController {
    

    @IBOutlet private weak var infoLbl: UILabel!
    
    var userModel: UserModel?
    override func viewDidLoad() {
        super.viewDidLoad()
        setupUI()
    }
    
    @IBAction private func continueAction() {
        guard let userModel = userModel else {return}

        userDefaultsService.saveUserModel(UserModel: userModel)
        navigationController?.popToRootViewController(animated: true)
    }
    
    private func setupUI() {
        let name = userModel?.name ?? "User"
        infoLbl.text = "\(name) welcome to our Cool App"
    }
}
