//
//  ChatVC.swift
//  Smack
//
//  Created by Jenna Hakki on 12/23/17.
//  Copyright © 2017 Jenna Hakki. All rights reserved.
//

import UIKit

class ChatVC: UIViewController {
    
    //Outlets
    @IBOutlet weak var menuBtn: UIButton!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        menuBtn.addTarget(self.revealViewController(), action: #selector(SWRevealViewController.revealToggle(_:)), for: .touchUpInside)
        
        
        //Drag or swipe to also be able to open up the menu or close it
        self.view.addGestureRecognizer(self.revealViewController().panGestureRecognizer())
        
        //Tap to close
        self.view.addGestureRecognizer(self.revealViewController().tapGestureRecognizer())
    }

   
    
}
