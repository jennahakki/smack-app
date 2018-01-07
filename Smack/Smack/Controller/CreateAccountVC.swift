//
//  CreateAccountVC.swift
//  Smack
//
//  Created by Jenna Hakki on 1/7/18.
//  Copyright © 2018 Jenna Hakki. All rights reserved.
//

import UIKit

class CreateAccountVC: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

    }

    @IBAction func closedPressed(_ sender: Any) {
        performSegue(withIdentifier: UNWIND, sender: nil)
    }
    
    

}
