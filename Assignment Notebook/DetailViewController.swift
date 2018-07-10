//
//  DetailViewController.swift
//  Assignment Notebook
//
//  Created by Jason Dong on 7/9/18.
//  Copyright © 2018 Jason Dong. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {

    @IBOutlet weak var nameOfAssignment: UITextField!
    @IBOutlet weak var courseName: UITextField!
    @IBOutlet weak var dueDate: UITextField!
    @IBOutlet weak var assignmentDescription: UITextField!
    var detailItem: Assignment? {
        didSet {
            // Update the view.
            configureView()
        }
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        configureView()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    override func viewWillDisappear(_ animated: Bool) {
        if let assignment = self.detailItem {
            assignment.nameOfAssignment = nameOfAssignment.text!
            assignment.courseName = courseName.text!
            assignment.dueDate = dueDate.text!
            assignment.assignmentDescription = assignmentDescription.text!
        }
    }
    func configureView() {
        //Update the user interface for the detail item
        if let city = self.detailItem {
            if nameOfAssignment != nil {
                nameOfAssignment.text = assignment.name
                courseName.text = assignment.state
                dueDate.text = Assignment.population
                assignmentDescription.text = Assignment.assignmentDiscription
            }
        }
    }
}

