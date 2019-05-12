//
//  Survey.swift
//  Suvrvey
//
//  Created by Nick Scheele on 5/7/19.
//  Copyright © 2019 Malik Ata. All rights reserved.
//

import Foundation

class Survey{
    var questions:[String]
    var responces:[[Int]]
    var creator:String
    var title:String
    
    //0 = true false
    //1 = Multipe choice
    var type:Int
    
    init() {
        questions = ["This is not a question"]
        responces = [[0]]
        creator = "Default"
        title = "Default Survey Title"
        type = 0
    }
    init(_ name:String) {
        questions = ["This is not a question"]
        responces = [[0]]
        creator = "Default"
        type = 0
        title = name
    }
    init(_ name:String, _ type:Int) {
        questions = ["This is not a question"]
        responces = [[0]]
        creator = "Default"
        self.type = type
        title = name
    }
    init(_ dictionary:NSDictionary){
        responces = [[0]]
        creator = dictionary["Creator"] as? String ?? "Default"
        self.type = dictionary["Questions"] as? Int ?? 0
        title = dictionary["Title"] as? String ?? ""
        self.questions = dictionary["Questions"] as? [String] ?? [String]()
    }
}
