//
//  LogInViewController.swift
//  Suvrvey
//
//  Created by Nick Scheele on 5/11/19.
//  Copyright © 2019 Malik Ata. All rights reserved.
//

import UIKit
import GoogleSignIn
import Firebase
import FirebaseUI

class LogInViewController: UIViewController, GIDSignInUIDelegate {
    

    @IBOutlet weak var UserName: UITextField!
    @IBOutlet weak var password: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        GIDSignIn.sharedInstance().uiDelegate = self
        
        let signInButton = GIDSignInButton(frame: CGRect(x: 0,y: 0,width: 100,height: 50))
        signInButton.center = CGPoint(x: view.center.x, y: view.center.y+125)

        view.addSubview(signInButton)
        
        let tapGesture = UITapGestureRecognizer(target: self, action: #selector(self.dismissKeyboard(_:)))
        self.view.addGestureRecognizer(tapGesture)

    }
    
    @objc func dismissKeyboard (_ sender: UITapGestureRecognizer){
        UserName.resignFirstResponder()
        password.resignFirstResponder()
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func login(_ sender: Any) {
        Auth.auth().signIn(withEmail: UserName.text!, password: password.text!) {  user, error in
            if let firebaseError = error {
                print(firebaseError.localizedDescription)
                return
            }
            print(" success! ")
            self.presentLoggedInScreen()
        }
    }
    
    func presentLoggedInScreen() {
        let storyboard = UIStoryboard(name: "Main", bundle: nil);
        let LoggedInvc:UINavigationController = storyboard.instantiateViewController(withIdentifier: "Main") as! UINavigationController
        self.present(LoggedInvc, animated:true, completion:nil)
    }

}
