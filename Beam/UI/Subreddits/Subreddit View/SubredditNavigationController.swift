//
//  SubredditNavigationController.swift
//  beam
//
//  Created by Powermobile on 19-10-15.
//  Copyright © 2015 Powermobile. All rights reserved.
//

import UIKit

final class SubredditNavigationController: BeamNavigationController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.usesRoundedCorners = UIDevice.current.userInterfaceIdiom == .phone
    }
}
