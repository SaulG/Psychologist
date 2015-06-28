//
//  TextViewController.swift
//  Psychologist
//
//  Created by Saul Gausin on 26/06/15.
//  Copyright (c) 2015 SaulGausin. All rights reserved.
//

import UIKit

class TextViewController: UIViewController {
    
    @IBOutlet weak var textView: UITextView! {
        didSet {
            textView?.text = text
        }
    }
    
    override var preferredContentSize: CGSize {
        get {
            if textView != nil && presentationController != nil {
                return textView.sizeThatFits(presentingViewController!.view.bounds.size)
            } else {
                return super.preferredContentSize
            }
        }
        set { super.preferredContentSize = newValue}
    }
    
    var text: String = "" {
        didSet {
            textView?.text = text
        }
    }
}
