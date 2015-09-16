//
//  ViewController.swift
//  Hiding Labels
//
//  Created by Jure Zove on 14/09/15.
//  Copyright © 2015 Candy Code. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var firstHeightConstraint: NSLayoutConstraint!
    @IBOutlet weak var secondHeightConstraint: NSLayoutConstraint!
    @IBOutlet weak var thirdHeightConstraint: NSLayoutConstraint!
    
    @IBOutlet weak var firstSecondVerticalSpacing: NSLayoutConstraint!
    @IBOutlet weak var secondThirdTopConstraint: NSLayoutConstraint!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func hideSecondLabel(sender: AnyObject) {
        self.secondHeightConstraint.constant = self.secondHeightConstraint.constant == 0 ? 40 : 0
        self.firstSecondVerticalSpacing.constant = self.firstSecondVerticalSpacing.constant == 0 ? 8 : 0
        self.view.setNeedsLayout()
        
        // Bonus: animating change
        UIView.animateWithDuration(0.3) { () -> Void in
            self.view.layoutIfNeeded()
        }
    }

}

