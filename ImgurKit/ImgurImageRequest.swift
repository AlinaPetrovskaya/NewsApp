//
//  ImgurImageRequest.swift
//  Beam
//
//  Created by Powermobile on 28-04-16.
//  Copyright © 2016 Powermobile. All rights reserved.
//

import UIKit

public class ImgurImageRequest: ImgurRequest {
    
    public init(deleteRequestWithDeleteHash deleteHash: String) {
        super.init()
        self.HTTPMethod = ImgurHTTPMethod.Delete
        self.deleteHash = deleteHash
        self.endpoint = "image/\(deleteHash)"
    }

}
