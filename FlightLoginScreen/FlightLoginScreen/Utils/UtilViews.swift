//
//  UtilViews.swift
//  FlightLoginScreen
//
//  Created by Miquel Bosch on 23/2/18.
//  Copyright © 2018 Miquel Bosch. All rights reserved.
//

import UIKit

class UtilViews {
    
    
    
}

@IBDesignable
public class KTextField: UITextField{
    
    /// Make the corners rounded with the specified radius
    @IBInspectable public var cornerRadius: CGFloat = 0.0 {
        didSet {
            layer.cornerRadius = cornerRadius
        }
    }
    
}



@IBDesignable
public class KButton: UIButton{
    
    /// Make the corners rounded with the specified radius
    @IBInspectable public var cornerRadius: CGFloat = 0.0 {
        didSet {
            layer.cornerRadius = cornerRadius
        }
    }
}

