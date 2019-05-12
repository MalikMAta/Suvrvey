//
//  AccountController.swift
//  Suvrvey
//
//  Created by Nick Scheele on 5/11/19.
//  Copyright © 2019 Malik Ata. All rights reserved.
//

import UIKit
import Firebase

class AccountController: UIViewController {

    @IBOutlet weak var UserName: UILabel!
    
    var user:User?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        user = Auth.auth().currentUser!
        var userNameText = user?.email ?? "Unable to display UserName"
        if let location = userNameText.range(of: "@"){
            userNameText.removeSubrange(location.lowerBound ..< userNameText.endIndex)
        }
        UserName.text = userNameText
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
