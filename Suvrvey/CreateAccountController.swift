//
//  CreateAccountController.swift
//  Suvrvey
//
//  Created by Nick Scheele on 5/11/19.
//  Copyright © 2019 Malik Ata. All rights reserved.
//

import UIKit
import Firebase

class CreateAccountController: UIViewController {
    
    
    @IBOutlet weak var UserName: UITextField!
    @IBOutlet weak var password: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        let tapGesture = UITapGestureRecognizer(target: self, action: #selector(self.dismissKeyboard(_:)))
        self.view.addGestureRecognizer(tapGesture)
        
    }
    
    @objc func dismissKeyboard (_ sender: UITapGestureRecognizer){
        UserName.resignFirstResponder()
        password.resignFirstResponder()
    }
    
    @IBAction func create(_ sender: Any) {
        
        Auth.auth().createUser(withEmail: UserName.text!, password: password.text!) {  user, error in
            if let firebaseError = error {
                print(firebaseError.localizedDescription)
                return
            }
            print(" Account Created! ")
            self.LogIn()
        }
        
    }
    
    func LogIn(){
        Auth.auth().signIn(withEmail: UserName.text!, password: password.text!) {  user, error in
            if let firebaseError = error {
                print(firebaseError.localizedDescription)
                return
            }
            print(" Logged In! ")
            self.presentLoggedInScreen()
        }
    }
    
    func presentLoggedInScreen() {
        let storyboard = UIStoryboard(name: "Main", bundle: nil);
        let LoggedInvc:UINavigationController = storyboard.instantiateViewController(withIdentifier: "Main") as! UINavigationController
        self.present(LoggedInvc, animated:true, completion:nil)
    }
    
    @IBAction func AlreadyHaveAccount(_ sender: Any) {
        let storyboard = UIStoryboard(name: "Main", bundle: nil);
        let LoggedInvc:UINavigationController = storyboard.instantiateViewController(withIdentifier: "LogIn") as! UINavigationController
        self.present(LoggedInvc, animated:true, completion:nil)
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
