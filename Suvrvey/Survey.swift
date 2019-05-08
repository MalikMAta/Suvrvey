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
    
    init() {
        questions = ["This is not a question"]
        responces = [[0]]
        creator = "Default"
        title = "Default Survey Title"
    }
    init(_ name:String) {
        questions = ["This is not a question"]
        responces = [[0]]
        creator = "SurveyUp"
        title = name
    }
}
