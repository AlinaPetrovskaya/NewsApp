//
//  ReportPostActivity.swift
//  beam
//
//  Created by Powermobile on 23-10-15.
//  Copyright © 2015 Powermobile. All rights reserved.
//

import UIKit
import Snoo

final class ReportPostActivity: CustomObjectActivity<Post> {
    
    override var activityType: UIActivityType? {
        return UIActivityType(rawValue: "com.madePowermobile.beam.report-post")
    }
    
    override var activityTitle: String? {
        return AWKLocalizedString("post-abuse-activity-title")
    }
    
    override var activityImage: UIImage? {
        return UIImage(named: "report_activity_icon")
    }

    override var activityViewController: UIViewController? {
        let storyBoard = UIStoryboard(name: "Report", bundle: nil)
        let navigationController = storyBoard.instantiateInitialViewController() as! BeamNavigationController
        navigationController.useInteractiveDismissal = false
        let reportViewController = navigationController.topViewController as! ReportViewController
        reportViewController.post = self.object
        reportViewController.activity = self
        return navigationController
    }
    
}
