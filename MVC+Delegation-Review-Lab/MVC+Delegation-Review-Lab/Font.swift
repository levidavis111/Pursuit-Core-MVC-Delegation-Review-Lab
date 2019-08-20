//
//  Font.swift
//  MVC+Delegation-Review-Lab
//
//  Created by Levi Davis on 8/19/19.
//  Copyright © 2019 Benjamin Stone. All rights reserved.
//

import Foundation
import UIKit

struct Font{
    var fontSize: CGFloat = 17
    
    func getFontSize() -> CGFloat {
        return self.fontSize
    }
    
    mutating func changeSize(fontSize: CGFloat) {
        self.fontSize = fontSize
    }
    
}
