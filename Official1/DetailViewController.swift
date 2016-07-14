//
//  DetailViewController.swift
//  Official1
//
//  Created by Honorebel Walker-Koyejo on 7/11/16.
//  Copyright © 2016 Honorebel Walker-Koyejo1. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {

    @IBAction func Signup(_ sender: AnyObject) {
    
        print("button Tapped");
        
    }
    
    @IBAction func Login(_ sender: AnyObject) {
        
        print("button Tapped");
    }
    
    @IBOutlet weak var detailDescriptionLabel: UILabel!


    func configureView() {
        // Update the user interface for the detail item.
        if let detail = self.detailItem {
            if let label = self.detailDescriptionLabel {
                label.text = detail.description
            }
        }
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        self.configureView()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    var detailItem: NSDate? {
        didSet {
            // Update the view.
            self.configureView()
        }
    }


}

