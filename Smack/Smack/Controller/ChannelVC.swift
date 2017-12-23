//
//  ChannelVC.swift
//  Smack
//
//  Created by Jenna Hakki on 12/23/17.
//  Copyright © 2017 Jenna Hakki. All rights reserved.
//

import UIKit

class ChannelVC: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        //Change the width of the rear reveal screen
        self.revealViewController().rearViewRevealWidth = self.view.frame.size.width - 60
        //the rearview should take up the whole screen, except for 60 pts)
        
    }

}




