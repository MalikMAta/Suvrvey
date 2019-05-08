//
//  ViewController.swift
//  Suvrvey
//
//  Created by Malik Ata on 5/6/19.
//  Copyright © 2019 Malik Ata. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    static var surveyArray = [Survey]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        if ViewController.surveyArray.count == 0{
            ViewController.surveyArray.append(Survey("SJSU Survey"))
            ViewController.surveyArray.append(Survey("CMPE 137"))
            ViewController.surveyArray.append(Survey("New Rec Center"))
            ViewController.surveyArray.append(Survey("SJSU Food"))
            ViewController.surveyArray.append(Survey("SJSU Parking"))
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

