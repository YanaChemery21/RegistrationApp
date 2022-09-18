//
//  UserDefaultsService.swift
//  RegistrationApp
//
//  Created by air on 15.08.22.
//

import Foundation
final class userDefaultsService {
    static func saveUserModel(UserModel: UserModel) {
        UserDefaults.standard.set(UserModel.name, forKey: UserDefaults.Keys.name.rawValue)
        UserDefaults.standard.set(UserModel.email, forKey: UserDefaults.Keys.email.rawValue)
        UserDefaults.standard.set(UserModel.pass, forKey: UserDefaults.Keys.password.rawValue)
    }

    static func getUserModel() -> UserModel? {
        let name = UserDefaults.standard.string(forKey: UserDefaults.Keys.name.rawValue)
        guard let email = UserDefaults.standard.string(forKey: UserDefaults.Keys.email.rawValue),
              let password = UserDefaults.standard.string(forKey: UserDefaults.Keys.password.rawValue)
        else { return nil }
        let userModel = UserModel(name: name, email: email, pass: password)
        return userModel
    }
    static func cleanUserDefaults()  {
        UserDefaults.standard.reset()
    }
}
