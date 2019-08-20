//
//  SizeDelegate.swift
//  MVC+Delegation-Review-Lab
//
//  Created by Levi Davis on 8/19/19.
//  Copyright © 2019 Benjamin Stone. All rights reserved.
//

import Foundation
import UIKit

protocol SizeDelegate: AnyObject {
    func getFontSize(fontSize: CGFloat)
}
