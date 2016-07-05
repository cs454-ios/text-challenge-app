//
//  CashTextFieldDelegate.swift
//  TextFields
//
//  Created by Jeanne Pascua on 7/5/16.
//  Copyright © 2016 Udacity. All rights reserved.
//

import Foundation
import UIKit

class CashTextFieldDelegate: NSObject, UITextFieldDelegate {
    
    func textField(textField: UITextField, shouldChangeCharactersInRange range: NSRange, replacementString string: String) -> Bool {
        
        return true
    }
}