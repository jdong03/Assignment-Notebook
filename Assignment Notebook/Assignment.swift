//
//  Assignment.swift
//  Assignment Notebook
//
//  Created by Jason Dong on 7/9/18.
//  Copyright © 2018 Jason Dong. All rights reserved.
//

import UIKit

class Assignment: Codable {
    var nameOfAssignment : String
    var courseName : String
    var dueDate: String
    var assignmentDiscription: String

    init(name: String, state: String, population: Int, image: Data) {
        self.nameOfAssignment = nameOfAssignment
        self.courseName = courseName
        self.dueDate = dueDate
        self.assignmentDiscription = assignmentDiscription
    }
}
