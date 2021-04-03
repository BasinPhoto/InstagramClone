//
//  Extensions.swift
//  InstagramClone
//
//  Created by Sergey Basin on 03.04.2021.
//

import UIKit

extension UIApplication {
    func endEditing() {
        sendAction(#selector(UIResponder.resignFirstResponder), to: nil, from: nil, for: nil)
    }
}

