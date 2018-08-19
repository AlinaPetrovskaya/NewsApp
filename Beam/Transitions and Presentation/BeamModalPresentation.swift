//
//  BeamModalPresentation.swift
//  Beam
//
//  Created by Powermobile on 16/11/2016.
//  Copyright © 2016 Powermobile. All rights reserved.
//

import UIKit

enum BeamModalPresentationStyle {
    case custom //Use the beam custom presentation (with
    case formsheet //Will display the view as a form sheet on devices that allow this, such as iPad
}

protocol BeamModalPresentation {
    
    var preferredModalPresentationStyle: BeamModalPresentationStyle { get }
    
}
