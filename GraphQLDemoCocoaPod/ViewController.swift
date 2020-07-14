//
//  ViewController.swift
//  GraphQLDemoCocoaPod
//
//  Created by Mohamed Korany Ali on 7/14/20.
//  Copyright © 2020 Mohamed Korany Ali. All rights reserved.
//

import UIKit
import Apollo

class ViewController: UIViewController {

  override func viewDidLoad() {
    super.viewDidLoad()
    // Do any additional setup after loading the view.
    // register
    /*
    Network.shared.apollo.perform(mutation: RegisterMutation(registerInput: RegisterInput(name: "Mohamed Korany iOS", email: "mohamed@iOS.com", password: "123456789@MMD", mobile: "01110686618"))){
      result in
      switch result {
      case .success(let Result):
        if Result.data?.register == true {
          print("User Registered Successfully")
        }
      case .failure(let error):
        print("error is : \(error)")
      }
    }
    */
    
    //login
      Network.shared.apollo.perform(mutation: LoginMutation(loginInput: LoginInput(email: "mohammed.korany.ali@gmail.com", password: "12345678910@MMD"))){ result in
      //  print("\(result) result result")
      switch result{

      case .success(let authPayload):
        if let returnObject = authPayload.data?.login.jsonObject{
          print(returnObject.jsonValue)
//          print(returnObject.accessToken)
//          print(returnObject.expiresIn  ?? "NOT Found")
//          print(returnObject._typename ?? "NOT Found")
//          print(returnObject.refreshToken ?? "NOT Found")
        }
        print("\(authPayload) success success success")
      case .failure(let error):
        print("failure failure failure\(error) failure failure failure")
      }
    }
  }
}

class Network {
  static let shared = Network()
    
  private(set) lazy var apollo = ApolloClient(url: URL(string: "http://nestle.moselaymdserver.com/graphql")!)
}
