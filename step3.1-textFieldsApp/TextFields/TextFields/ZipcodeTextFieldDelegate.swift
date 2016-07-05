//
//  ZipcodeTextFieldDelegate.swift
//  TextFields
//
//  Created by Jeanne Pascua on 7/4/16.
//  Copyright © 2016 Udacity. All rights reserved.
//

import Foundation
import UIKit

class ZipcodeTextFieldDelegate: NSObject, UITextFieldDelegate {
    
    func textField(textField: UITextField, shouldChangeCharactersInRange range: NSRange, replacementString string: String) -> Bool {
        
        var newText: NSString = textField.text!
        newText = newText.stringByReplacingCharactersInRange(range, withString: string)
        
        let zipcode = Int(newText as String)
        var isNum = false
        
        if zipcode != nil {
            isNum = true
        }
        
        return newText.length <= 5 && isNum;
    }
    
    func textFieldShouldReturn(textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        
        return true;
    }
}